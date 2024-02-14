<!DOCTYPE html>
<#assign externalKeyParam=""> <#assign jsessionid="">
<#--
<#assign keepSessionInAppBar=Static[
	"org.ofbiz.base.util.UtilProperties"].getPropertyValue("general.properties", "keepSessionInAppBar")>
--> <#assign keepSessionInAppBar="Y"> <#-- Keep session in
AppBar or Not--> <#if
	keepSessionInAppBar?has_content && keepSessionInAppBar=="Y"> <#if
	(requestAttributes.externalLoginKey)?exists> <#assign
	externalKeyParam="?externalLoginKey="
	+ requestAttributes.externalLoginKey?if_exists></#if> <#if
	(session)?exists && (session.getId())?exists> <#assign
	jsessionid=session.getId()?if_exists></#if> <#if
	(externalLoginKey)?exists && (jsessionid)?exists> <#assign
	externalKeyParam="?jsessionid="
	+session.getId()+"&externalLoginKey=" + requestAttributes.externalLoginKey?if_exists>
</#if>

</#if>
  
<#assign ofbizServerName = application.getAttribute("
	_serverId")?default("default-server")> <#assign
	contextPath=request.getContextPath()> <#assign
	displayApps=Static[
	"org.apache.ofbiz.webapp.control.LoginWorker"].getAppBarWebInfos(security, userLogin, ofbizServerName, "main")>
<#assign displaySecondaryApps=Static[
	"org.apache.ofbiz.webapp.control.LoginWorker"].getAppBarWebInfos(security, userLogin, ofbizServerName, "secondary")>

<#assign appModelMenu=Static[
	"org.apache.ofbiz.widget.model.MenuFactory"].getMenuFromLocation(applicationMenuLocation,applicationMenuName)>
<#if appModelMenu.getModelMenuItemByName(headerItem)?exists> <#if
	headerItem!="main"> <#assign show_last_menu=true></#if> </#if>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<!-- Site wrapper -->
				<!-- Sidebar Menu -->
				<nav class="mt-1" id="sidr">
					<#if userLogin?exists>
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
                	<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						 <li class="nav-item">
            					<a href="${thisURL + externalKeyParam}" <#if selected> class="nav-link active" </#if> class="nav-link">
              						<img src="/nthphase/images/${display.title}.png" height="20px"><p> ${display.title}</p><i class="fas fa-angle-left right"></i>
            					</a>
				            <ul class="nav nav-treeview">
				              <li class="nav-item">
				                <a href="${thisURL + externalKeyParam}" <#if selected> class="nav-link active" </#if> class="nav-link">
              						<i class="far fa-circle nav-icon"></i><p> ${display.title}</p>
            					</a>
				              </li>
				            </ul>
               
					</ul>
                    
                </#if>
              </#if>
            </#list>
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
                     	<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						   <li class="nav-item">
            					<a href="${thisURL + externalKeyParam}" <#if selected> class="nav-link active" </#if> class="nav-link">
              						<img src="/nthphase/images/${display.title}.png" height="20px"><p> ${display.title}</p><i class="fas fa-angle-left right"></i>
            					</a>
				            <ul class="nav nav-treeview">
				              <li class="nav-item">
				                <a href="pages/forms/general.html" class="nav-link">
				                  <i class="far fa-circle nav-icon"></i>
				                  <p>General Elements</p>
				                </a>
				              </li>
				            </ul>
        			  </li>
					</ul>
                </#if>
              </#if>
            </#list>
					</#if>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

	<!-- ./wrapper -->
</body>
<script type="text/javascript">
    $(".screenlet-title-bar").css("display", "none");
 </script>
</html>