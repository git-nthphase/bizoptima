<!DOCTYPE html>
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
      <#if layoutSettings.headerImageUrl?exists>
            <#assign headerImageUrl = layoutSettings.headerImageUrl>
            <#elseif layoutSettings.commonHeaderImageUrl?exists>
            <#assign headerImageUrl = 
            layoutSettings.commonHeaderImageUrl>
            <#elseif layoutSettings.VT_HDR_IMAGE_URL?exists>
            <#assign headerImageUrl = layoutSettings.VT_HDR_IMAGE_URL.get(0)>
            </#if>
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
	"org.apache.ofbiz.widget.model.MenuFactory"].getMenuFromLocation(applicationMenuLocation,applicationMenuName,visualTheme)>
<#if appModelMenu.getModelMenuItemByName(headerItem)?exists> <#if
	headerItem!="main"> <#assign show_last_menu=true></#if> </#if>
	<#if userLogin?exists>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>${layoutSettings.companyName}: &nbsp;<#if 
         (page.titleProperty)?has_content>${uiLabelMap
         [page.titleProperty]}<#else>${(page.title)?if_exists}
         </#if>
      </title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
   <link rel="stylesheet" 
         href="<@ofbizContentUrl>/images/jquery/plugins/sidr/plugins/fontawesome-free/css/all.min.css</@ofbizContentUrl>" type="text/css"/>
  <!-- Theme style -->
  <link rel="stylesheet" 
         href="<@ofbizContentUrl>/images/jquery/plugins/sidr/css/adminlte.min.css</@ofbizContentUrl>" type="text/css"/>
</head>

<body class="sidebar-mini control-sidebar-slide-open layout-fixed layout-navbar-fixed">
<!-- Site wrapper -->
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-light bg-info">
    <!-- Left navbar links -->
      <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button" style="color: #fff"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item">
      <a class="nav-link" style="color: #fff">${headerItem?if_exists}</a>
      </li>
    </ul>
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button" >
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <img src="/nthphase/images/sample_user.jpg" height="30px" style="border-radius: 50%;">
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right" style="width:"10%">
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i> ${userLogin.userLoginId?if_exists}</i>
          </a>
          <div class="dropdown-divider"></div>
          <a href="<@ofbizUrl>logout</@ofbizUrl>">
                          <i> <img src="/nthphase/images/logout_icon.png" height="15px" 
                              style="padding-right: 5px;"> ${uiLabelMap.CommonLogout}</i></a>
     
        </div>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar elevation-4 sidebar-dark-info">
    <!-- Brand Logo -->
    <a href="#" class="brand-link bg-info">
      <span class="brand-text font-weight-bold">Nth Phase</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) -->
      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
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
                
						 <li class="nav-item" id="${display.name}">
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
               </li>
                    
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
                     	
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
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
        			  </li>
                </#if>
              </#if>
            </#list>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
</div>
<!-- ./wrapper -->
</body>
<!-- jQuery -->
<script language="javascript" type="text/javascript" src="<@ofbizContentUrl>/images/jquery/plugins/sidr/plugins/jquery/jquery.min.js</@ofbizContentUrl>"></script>
<!-- Bootstrap 4 -->
<script language="javascript" type="text/javascript" src="<@ofbizContentUrl>/images/jquery/plugins/sidr/plugins/bootstrap/js/bootstrap.bundle.min.js</@ofbizContentUrl>"></script>
<!-- AdminLTE App -->
<script language="javascript" type="text/javascript" src="<@ofbizContentUrl>/images/jquery/plugins/sidr/js/adminlte.min.js</@ofbizContentUrl>"></script>
</body>
<script type="text/javascript">
$( document ).ready(function() {
$("#app-navigation ul li ul").find('li').each(function(){
var current = $(this);
	var inHtml=current.html();
	//$('#menuList').append(new Option(an, an))
});
});
 
 </script>
</#if>
