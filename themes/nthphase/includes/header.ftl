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
<#---<#include "notification.ftl"/> -->
<script language="javascript" type="text/javascript" src="<@ofbizContentUrl>/images/process_bar/pace.js</@ofbizContentUrl>"></script>
<link type="text/css" href="<@ofbizContentUrl>/images/process_bar/custom.css</@ofbizContentUrl>" rel="Stylesheet" />
<#--
<#assign externalKeyParam = "&amp;externalLoginKey=" + requestAttributes.externalLoginKey?if_exists>
-->
<#assign externalKeyParam=""> 
<#assign jsessionid="">
<#assign keepSessionInAppBar="Y">
<#-- 
<#assign keepSessionInAppBar = Static["org.ofbiz.base.util.UtilProperties"].getPropertyValue("general.properties", "keepSessionInAppBar")>
-->
<#-- Keep session in AppBar or Not-->
<#if keepSessionInAppBar?has_content && keepSessionInAppBar=="Y">
<#if (requestAttributes.externalLoginKey)?exists>
<#assign externalKeyParam = "&amp;externalLoginKey=" + requestAttributes.externalLoginKey?if_exists>
</#if>
<#if (session)?exists && (session.getId())?exists >
<#assign jsessionid = session.getId()?if_exists>
</#if>
<#if (externalLoginKey)?exists && (jsessionid)?exists >
<#assign externalKeyParam = "&amp;jsessionid="+session.getId()+"&amp;externalLoginKey=" + requestAttributes.externalLoginKey?if_exists>
</#if>
</#if>
<#if (requestAttributes.person)?exists><#assign person = 
requestAttributes.person></#if>
<#if (requestAttributes.partyGroup)?exists><#assign partyGroup = 
requestAttributes.partyGroup></#if>
<#assign docLangAttr = locale.toString()?replace("_", "-")>
<#assign langDir = "ltr">
<#if "ar.iw"?contains(docLangAttr?substring(0, 2))>
<#assign langDir = "rtl">
</#if>

<html lang="${docLangAttr}" dir="${langDir}">
   <head>
      <script language="javascript" type="text/javascript" src="<@ofbizContentUrl>/images/notifications/jquery.min.js</@ofbizContentUrl>"></script>
      <script type="application/javascript">					 

      </script>
      <meta http-equiv="Content-Type" content="text/html; 
         charset=UTF-8"/>
      <title>${layoutSettings.companyName}: <#if 
         (page.titleProperty)?has_content>${uiLabelMap
         [page.titleProperty]}<#else>${(page.title)?if_exists}
         </#if>
      </title>
      <#if layoutSettings.shortcutIcon?has_content>
      <#assign shortcutIcon = layoutSettings.shortcutIcon/>
      <#elseif layoutSettings.VT_SHORTCUT_ICON?has_content>
      <#assign shortcutIcon = 
      layoutSettings.VT_SHORTCUT_ICON.get(0)/>
      </#if>
      <#if shortcutIcon?has_content>
      <link rel="shortcut icon" href="<@ofbizContentUrl>
         ${StringUtil.wrapString(shortcutIcon)}</@ofbizContentUrl>" />
      </#if>
      <#if layoutSettings.javaScripts?has_content>
      <#--layoutSettings.javaScripts is a list of java 
      scripts. -->
      <#-- use a Set to make sure each javascript is declared 
      only once, but iterate the list to maintain the correct order 
      <#assign javaScriptsSet = Static["org.ofbiz.base.util.UtilMisc"].toSet(layoutSettings.javaScripts) />
      <#list layoutSettings.javaScripts as javaScript>
      <#if javaScripts?has_content>
      <#if javaScriptsSet.contains(javaScript)?has_content>
      <#assign nothing = javaScriptsSet.remove(javaScript)/>
      <script src="<@ofbizContentUrl>${StringUtil.wrapString(javaScript)}</@ofbizContentUrl>" type="text/javascript"></script>
      </#if>
      </#if>
      </#list>-->
      </#if>
      <#if layoutSettings.VT_HDR_JAVASCRIPT?has_content>
      <#list layoutSettings.VT_HDR_JAVASCRIPT as javaScript>
      <script src="<@ofbizContentUrl>
         ${StringUtil.wrapString(javaScript)}</@ofbizContentUrl>" 
         type="text/javascript"></script>
      </#list>
      </#if>
      <#if layoutSettings.styleSheets?has_content>
      <#--layoutSettings.styleSheets is a list of style 
      sheets. So, you can have a user-specified "main" style sheet, 
      AND a component style sheet.-->
      <#list layoutSettings.styleSheets as styleSheet>
      <link rel="stylesheet" href="<@ofbizContentUrl>
         ${StringUtil.wrapString(styleSheet)}</@ofbizContentUrl>" 
         type="text/css"/>
      </#list>
      </#if>
      <#if layoutSettings.VT_STYLESHEET?has_content>
      <#list layoutSettings.VT_STYLESHEET as styleSheet>
      <link rel="stylesheet" href="<@ofbizContentUrl>
         ${StringUtil.wrapString(styleSheet)}</@ofbizContentUrl>" 
         type="text/css"/>
      </#list>
      </#if>
      <#if layoutSettings.rtlStyleSheets?has_content && langDir == 
      "rtl">
      <#--layoutSettings.rtlStyleSheets is a list of rtl style 
      sheets.-->
      <#list layoutSettings.rtlStyleSheets as styleSheet>
      <link rel="stylesheet" href="<@ofbizContentUrl>
         ${StringUtil.wrapString(styleSheet)}</@ofbizContentUrl>" 
         type="text/css"/>
      </#list>
      </#if>
      <#if layoutSettings.VT_RTL_STYLESHEET?has_content && langDir 
      == "rtl">
      <#list layoutSettings.VT_RTL_STYLESHEET as styleSheet>
      <link rel="stylesheet" href="<@ofbizContentUrl>
         ${StringUtil.wrapString(styleSheet)}</@ofbizContentUrl>" 
         type="text/css"/>
      </#list>
      </#if>
      <#if layoutSettings.VT_EXTRA_HEAD?has_content>
      <#list layoutSettings.VT_EXTRA_HEAD as extraHead>
      ${extraHead}
      </#list>
      </#if>
      <link rel="stylesheet" 
         href="<@ofbizContentUrl>/images/jquery/plugins/sidr/stylesheets/
         jquery.sidr.light.css</@ofbizContentUrl>" type="text/css"/>
      <script language="javascript" type="text/javascript" 
         src="<@ofbizContentUrl>/images/jquery/plugins/sidr/jquery.sidr.j
         s</@ofbizContentUrl>"></script>
   </head>
   <#if layoutSettings.headerImageLinkUrl?exists>
   <#assign logoLinkURL = "${layoutSettings.headerImageLinkUrl}">
   <#else>
   <#assign logoLinkURL = 
   "${layoutSettings.commonHeaderImageLinkUrl}">
   </#if>
   <#if person?has_content>
   <#assign userName = person.firstName?if_exists + " " + 
   person.middleName?if_exists + " " + person.lastName?if_exists>
   <#elseif partyGroup?has_content>
   <#assign userName = partyGroup.groupName?if_exists>
   <#elseif userLogin?exists>
   <#assign userName = userLogin.userLoginId>
   <#else>
   <#assign userName = "">
   </#if>
   <#if defaultOrganizationPartyGroupName?has_content>
   <#assign orgName = defaultOrganizationPartyGroupName?
   if_exists>
   <#else>
   <#assign orgName = "">
   </#if>
   <body  <#if userLogin?exists><#else> id="loginHtml" </#if>>
      <div id="wait-spinner" style="display:none">
         <div id="wait-spinner-image"></div>
      </div>
      <div class="page-container">
      <div class="hidden">
         <a href="#column-container" 
            title="${uiLabelMap.CommonSkipNavigation}" accesskey="2">
         ${uiLabelMap.CommonSkipNavigation}
         </a>
      </div>
      <#assign PartyGroup="">
      <#if delegator?has_content && userLogin?exists>
      <#assign PartyGroup = delegator.findOne("PartyGroup", {"partyId" :"Company"}, false)>
      </#if>
      <div <#if userLogin?exists>id="masthead"<#else> id="masthead-before" </#if>>
         <!-- <div class="head-freez" style="background-color:#0093dd"> -->
         <ul>
           <#if userLogin?exists> 
            <li><a id="simple-menu" class="menu-button" 
               href="#sidr">Toggle menu</a></li>
            
            <li id="simple-menu-text">Menu</li>
            </#if>
            <#if (userPreferences.COMPACT_HEADER)?default("N") == 
            "Y">
            <li class="logo-area">
               <#if shortcutIcon?has_content && PartyGroup?has_content>
            <li style="margin-left: 34px;background-color:#fff;padding:0px;"><img src="${PartyGroup.logoImageUrl?if_exists}" alt="logo" style="height:43px;" ></li>
            </#if>
            </li>
            <#else>
            <#if layoutSettings.headerImageUrl?exists>
            <#assign headerImageUrl = layoutSettings.headerImageUrl>
            <#elseif layoutSettings.commonHeaderImageUrl?exists>
            <#assign headerImageUrl = 
            layoutSettings.commonHeaderImageUrl>
            <#elseif layoutSettings.VT_HDR_IMAGE_URL?exists>
            <#assign headerImageUrl = layoutSettings.VT_HDR_IMAGE_URL.get(0)>
            </#if>
           
            <#if layoutSettings.middleTopMessage1?has_content && 
            layoutSettings.middleTopMessage1 != " ">
            <li>
               <div class="last-system-msg">
                  <center>${layoutSettings.middleTopHeader?if_exists}</center>
                  <a href="${layoutSettings.middleTopLink1?if_exists}">${layoutSettings.middleTopMessage1?if_exists}</a><br/>
                  <a href="${layoutSettings.middleTopLink2?
                     if_exists}">${layoutSettings.middleTopMessage2?if_exists}</a><br/>
                  <a href="${layoutSettings.middleTopLink3?if_exists}">${layoutSettings.middleTopMessage3?if_exists}</a>
               </div>
            </li>
            </#if>
            </#if>
            <li class="control-area">
               <ul id="preferences-menu">
                  <#--   Notifications v2 by r - start -->       
                  <#if notificationCount?has_content> 
                  <li id="notify_li">
                     <span id="msg_count">${notificationCount}</span>
                     <a href="#" id="notifylink"><img src="/nthphase/bell.png" height="25" width="25"></a>
                     <div id="notificationContainer">
                        <div id="notificationTitle">
                           Notifications
                        </div>
                        <div id="notificationsBody" class="notifications">
                           <#list notificationsJSON  as notifications>                  
                           <div class="content"> <a href="${notifications.get("url")?if_exists}" target="_blank" >${notifications.get("menu")?if_exists} :${notifications.get("size")?if_exists}</a>                                   
                           </div>
                           </#list>
                        </div>
                        <#--
                        <div id="notificationFooter"><a href="#">See All</a></div>
                        -->
                     </div>
                  </li>
                  </#if>    
                  <#if userLogin?has_content &&  PartyGroup?has_content>
                  <#assign userOrgName = "" >
                  <#if userLogin?has_content>
                  <#--
                  <#assign orgId = userLogin.get("orgId")?if_exists>
                  <#if orgId?has_content>
                  <#assign userOrgName = Static["org.ofbiz.party.party.PartyHelper"].getPartyName(delegator, orgId, true)>
                  </#if>
                  -->
                  </#if>
                  <#if userLogin?exists>
                  <li class="org"><img src="/nthphase/images/logo-white.png" height="35px" 
style="padding-right: 5px;"></li>
                  </#if>    
                  <#--   Notifications v2 by r - end-->  
                  <#else>
                  <#if defaultOrganizationPartyGroupName?has_content>              
                  <li class="org"></li>
                  </#if>              
                  </#if>
                  <!-- Profile/Username end-->
                  <#--            
                  <#if webSiteId?exists && 
                  requestAttributes._CURRENT_VIEW_?exists && userLogin?exists>
                  <#include 
                  "component://common/webcommon/includes/helplink.ftl" />
                  <li><a class="help-link <#if pageAvail?
                     has_content> alert</#if>" href="javascript:lookup_popup2
                     ('showHelp?helpTopic=${helpTopic}&amp;portalPageId=
                     ${parameters.portalPageId?if_exists}','help' ,500,500);" 
                     title="${uiLabelMap.CommonHelp}"></a></li>
                  </#if>
                  -->            
                  <#if userLogin?exists>
                  <#if (userPreferences.COMPACT_HEADER)?default("N") 
                  == "Y">
                  <!-- <li><a href="#"><span class="glyphicon 
                     glyphicon-cog"></span> Settings</a> </li> -->
                  <#else>
                  <li class="expanded">
                     <a 
                        href="javascript:document.setUserPreferenceCompactHeaderY.submit
                        ()">&nbsp;&nbsp;</a>
                     <form name="setUserPreferenceCompactHeaderY" 
                        method="post" action="<@ofbizUrl>setUserPreference</@ofbizUrl>">
                        <input type="hidden" 
                           name="userPrefGroupTypeId" value="GLOBAL_PREFERENCES"/>
                        <input type="hidden" name="userPrefTypeId" 
                           value="COMPACT_HEADER"/>
                        <input type="hidden" name="userPrefValue" 
                           value="Y"/>
                     </form>
                  </li>
                  </#if>
                  </#if>
                  <li class="control-area">
                  </li>
                  <#if userLogin?exists>
                  <div class="dropdown_pro">
                     <button class="dropbtn"><img src="/nthphase/images/sample_user.jpg" height="30px" style="border-radius: 50%;"></button>
                     <div class="dropdown-content_pro">
                        <!-- User_Settings -->
                        <#if userLogin?exists>
                        <center> <a href="#">Settings</a> </center>
                        <center> <a href="javascript:displayLocales()">${uiLabelMap.CommonLanguageTitle}</a> </center>
                        <#if security.hasEntityPermission("MULTI", "_ORG_USER", session)>
                        <center> <a href="javascript:displayOrgs()">Orgs</a> </center>
                        </#if>
                        </#if>
                        <!-- Logout -->
                        <center>
                           <#if userLogin?exists>
                           <li class="user">
                              <a href="<@ofbizUrl>logout</@ofbizUrl>">
                           <li class="user"><img src="/nthphase/images/logout_icon.png" height="15px" 
                              style="padding-right: 5px;"> ${uiLabelMap.CommonLogout}</a></li>
                           <#else>
                           <#if userLogin?exists>
                           <li><a href="<@ofbizUrl>${checkLoginUrl}
                              </@ofbizUrl>">${uiLabelMap.CommonLogin}</a></li>
                           </#if>
                           </#if>
                        </center>
                     </div>
                  </div>
                  </#if>
               </ul>
            </li>
         </ul>
         <!-- </div>  freez end -->
         <br class="clear" />
   
      </div>
      <!-- <script type="text/javascript" src="/images/jquery/headerfix.js"> </script>-->
      <script>
         jQuery(document).ready(function ($) {
           $('#simple-menu').sidr({
             timing: 'ease-in-out',
             speed: 500
           });
           
           $(".view-calendar").each(function( index ) {
          $(this).children().prop("readonly","readonly");
         });
           
           $("#sidr").removeClass("hidden");
           
         });
         
         jQuery( window ).resize(function ($) {
           $.sidr('close', 'sidr');
         });
         
      </script>
      <link rel="stylesheet" href="<@ofbizContentUrl>/images/jquery/plugins/qtip/jquery.qtip.css</@ofbizContentUrl>" type="text/css" media="screen" charset="utf-8" />
      <script language="javascript" type="text/javascript" src="<@ofbizContentUrl>/images/jquery/plugins/qtip/jquery.qtip.js</@ofbizContentUrl>"></script>