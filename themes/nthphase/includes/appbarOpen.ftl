<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->
<#assign externalKeyParam=""> 
<#assign jsessionid="">
<#--<#assign keepSessionInAppBar = Static["org.ofbiz.base.util.UtilProperties"].getPropertyValue("general.properties", "keepSessionInAppBar")>
-->
<#assign keepSessionInAppBar="Y">
<#-- Keep session in AppBar or Not-->
<#if keepSessionInAppBar?has_content && keepSessionInAppBar=="Y">

<#if (requestAttributes.externalLoginKey)?exists>
<#assign externalKeyParam = "?externalLoginKey=" + requestAttributes.externalLoginKey?if_exists>
</#if>
<#if (session)?exists && (session.getId())?exists >
<#assign jsessionid = session.getId()?if_exists>
</#if>
<#if (externalLoginKey)?exists && (jsessionid)?exists >
<#assign externalKeyParam = "?jsessionid="+session.getId()+"&externalLoginKey=" + requestAttributes.externalLoginKey?if_exists>
</#if>

</#if>
  
<#assign ofbizServerName = application.getAttribute("_serverId")?default("default-server")>
<#assign contextPath = request.getContextPath()>
<#assign displayApps = Static["org.apache.ofbiz.webapp.control.LoginWorker"].getAppBarWebInfos(security, userLogin, ofbizServerName, "main")>
<#assign displaySecondaryApps = Static["org.apache.ofbiz.webapp.control.LoginWorker"].getAppBarWebInfos(security, userLogin, ofbizServerName, "secondary")>

<#assign appModelMenu = Static["org.apache.ofbiz.widget.model.MenuFactory"].getMenuFromLocation(applicationMenuLocation,applicationMenuName,visualTheme)>
<#if appModelMenu.getModelMenuItemByName(headerItem)?exists>
  <#if headerItem!="main">
    <#assign show_last_menu = true>
  </#if>
</#if>
<div id="sidr" class="hidden">

<#if userLogin?exists>
<#--        <h2>${uiLabelMap.CommonApplications}</h2>  -->

        <ul>
 <#--         <li>
            <ul><li><ul class="primary">   -->
            <#-- Primary Applications -->
            <#list displayApps as display>
              <#assign thisApp = display.getContextRoot()>
              <#assign permission = true>
              <#assign selected = false>
         <#if display.name != "content">
              <#assign permissions = display.getBasePermission()>
              <#list permissions as perm>
                <#if (perm != "NONE" && !security.hasEntityPermission(perm, "_VIEW", session) && !authz.hasPermission(session, perm, requestParameters))>
                  <#-- User must have ALL permissions in the base-permission list -->
                  <#assign permission = false>
                </#if>
              </#list>
         </#if>  
              <#if permission == true>
                <#if thisApp == contextPath || contextPath + "/" == thisApp>
                  <#assign selected = true>
                </#if>
                <#assign thisURL = thisApp>
                <#if thisApp != "/">
                  <#assign thisURL = thisURL + "/control/main">
                </#if>
                <#if layoutSettings.suppressTab?exists && display.name == layoutSettings.suppressTab>
                  <!-- do not display this component-->
                <#else>
                    <li <#if selected>class="selected"</#if>><a href="${thisURL + externalKeyParam}" <#if uiLabelMap?exists> title="${uiLabelMap[display.description]}"><img src="/nthphase/images/${display.title}.png" height="20px">&nbsp;&nbsp;&nbsp;&nbsp;${uiLabelMap[display.title]}<#else> title="${display.description}">${display.title}</#if></a></li>
                </#if>
              </#if>
            </#list>
<#--             </ul></li>
           <li><ul class="secondary"> -->
            <#-- Secondary Applications -->
            <#list displaySecondaryApps as display>
              <#assign thisApp = display.getContextRoot()>
              <#assign permission = true>
              <#assign selected = false>
              <#assign permissions = display.getBasePermission()>
              <#list permissions as perm>
                <#if (perm != "NONE" && !security.hasEntityPermission(perm, "_VIEW", session) && !authz.hasPermission(session, perm, requestParameters))>
                  <#-- User must have ALL permissions in the base-permission list -->
                  <#assign permission = false>
                </#if>
              </#list>
              <#if permission == true>
                <#if thisApp == contextPath || contextPath + "/" == thisApp>
                  <#assign selected = true>
                </#if>
                <#assign thisURL = thisApp>
                <#if thisApp != "/">
                  <#assign thisURL = thisURL + "/control/main">
                </#if>
                <#if layoutSettings.suppressTab?exists && display.name == layoutSettings.suppressTab>
                  <!-- do not display this component-->
                <#else>
                  <li <#if selected>class="selected"</#if>><a href="${thisURL + externalKeyParam}" <#if uiLabelMap?exists> title="${uiLabelMap[display.description]}"><img src="/nthphase/images/${display.title}.png" height="20px">&nbsp;&nbsp;&nbsp;&nbsp;${uiLabelMap[display.title]}<#else> title="${display.description}">${display.title}</#if></a></li>
                </#if>
              </#if>
            </#list>
<#--            </ul>
          </li> 
        </ul>
        </li> -->
        </ul>
<#else>
</#if>        
      </div>
