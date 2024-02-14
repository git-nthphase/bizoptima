
<html lang="en">
   <#--
   <#assign externalKeyParam="&amp;externalLoginKey="
   + requestAttributes.externalLoginKey?if_exists> --> <#assign
   externalKeyParam=""> <#assign jsessionid=""> <#assign
   keepSessionInAppBar="Y"> <#-- <#assign
   keepSessionInAppBar=Static[
   "org.ofbiz.base.util.UtilProperties"].getPropertyValue("general.properties", "keepSessionInAppBar")>
   --> <#-- Keep session in AppBar or Not--> <#if
   keepSessionInAppBar?has_content && keepSessionInAppBar=="Y"> <#if
   (requestAttributes.externalLoginKey)?exists> <#assign
   externalKeyParam="&amp;externalLoginKey="
   + requestAttributes.externalLoginKey?if_exists></#if> <#if
   (session)?exists && (session.getId())?exists> <#assign
   jsessionid=session.getId()?if_exists></#if> <#if
   (externalLoginKey)?exists && (jsessionid)?exists> <#assign
   externalKeyParam="&amp;jsessionid="
   +session.getId()+"&amp;externalLoginKey=" + requestAttributes.externalLoginKey?if_exists>
   </#if>
   </#if>
   <#if (requestAttributes.person)?exists><#assign person = 
   requestAttributes.person></#if>
   <#if (requestAttributes.partyGroup)?exists><#assign partyGroup = 
   requestAttributes.partyGroup></#if>
   <#assign docLangAttr = locale.toString()?replace("
   _", "-")> <#assign langDir="ltr"> <#if
   "ar.iw"?contains(docLangAttr?substring(0, 2))> <#assign
   langDir="rtl"></#if> <#if layoutSettings.headerImageLinkUrl?exists>
   <#assign logoLinkURL="${layoutSettings.headerImageLinkUrl}"> <#else>
   <#assign logoLinkURL="${layoutSettings.commonHeaderImageLinkUrl}"></#if>
   <#if person?has_content> <#assign
   userName=person.firstName?if_exists
   + " " + 
   person.middleName?if_exists + " " + person.lastName?if_exists>
   <#elseif partyGroup?has_content> <#assign
   userName=partyGroup.groupName?if_exists> <#elseif
   userLogin?exists> <#assign userName=userLogin.userLoginId>
   <#else> <#assign userName=""></#if> <#if
   defaultOrganizationPartyGroupName?has_content> <#assign
   orgName=defaultOrganizationPartyGroupName? if_exists> <#else>
   <#assign orgName=""></#if> <#if layoutSettings.headerImageUrl?exists>
   <#assign headerImageUrl=layoutSettings.headerImageUrl> <#elseif
   layoutSettings.commonHeaderImageUrl?exists> <#assign
   headerImageUrl=layoutSettings.commonHeaderImageUrl> <#elseif
   layoutSettings.VT_HDR_IMAGE_URL?exists> <#assign
   headerImageUrl=layoutSettings.VT_HDR_IMAGE_URL[0]></#if> <#assign
   externalKeyParam=""> <#assign jsessionid=""> <#-- <#assign
   keepSessionInAppBar=Static[
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
   headerItem!="main"> <#assign show_last_menu=true></#if> </#if> <#if
   userLogin?exists>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>${layoutSettings.companyName}: &nbsp;<#if
         (page.titleProperty)?has_content>${uiLabelMap
         [page.titleProperty]}<#else>${(page.title)?if_exists} </#if>
      </title>
      <!-- Font Awesome -->
      <link rel="stylesheet"
         href="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/fontawesome-free/css/all.min.css</@ofbizContentUrl>"
         type="text/css" />
      <!-- Tempusdominus Bootstrap 4 -->
      <link rel="stylesheet"
         href="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css</@ofbizContentUrl>"
         type="text/css" />
      <!-- iCheck -->
      <link rel="stylesheet"
         href="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/icheck-bootstrap/icheck-bootstrap.min.css</@ofbizContentUrl>"
         type="text/css" />
      <!-- JQVMap -->
      <link rel="stylesheet"
         href="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/jqvmap/jqvmap.min.css</@ofbizContentUrl>"
         type="text/css" />
      <!-- Theme style -->
      <link rel="stylesheet"
         href="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/dist/css/adminlte.min.css</@ofbizContentUrl>"
         type="text/css" />
      <!-- overlayScrollbars -->
      <link rel="stylesheet"
         href="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/overlayScrollbars/css/OverlayScrollbars.min.css</@ofbizContentUrl>"
         type="text/css" />
      <!-- Daterange picker -->
      <link rel="stylesheet"
         href="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/daterangepicker/daterangepicker.css</@ofbizContentUrl>"
         type="text/css" />
      <!-- summernote -->
      <link rel="stylesheet"
         href="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/summernote/summernote-bs4.min.css</@ofbizContentUrl>"
         type="text/css" />
      <link rel="stylesheet"
         href="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/dist/css/alt/style.css</@ofbizContentUrl>"
         type="text/css" />
      <style type="text/css">
         #content{
         margin:2px 2px 2px 10px;
         }
         #app-navigation {
         display: block;
         width: 100%;
         border-bottom: 0px solid #17a2b8;
         box-shadow: 0px 2px #17a2b8;
         }
         #app-navigation h2 {
         display: none;
         }
         #app-navigation ul {
         width: 100%;
         display: table;
         table-layout: fixed;
         margin: 0px;
         padding: 0px;
         }
         #app-navigation ul li {
         list-style: none;
         float: left;
         }
         #app-navigation ul li ul {
         width: 100%;
         display: table;
         table-layout: fixed;
         padding: 0;
         }
         #app-navigation ul li ul li a {
         colur: white;
         }
         #app-navigation ul li ul li {
         list-style-type: none;
         text-align: center;
         margin: 1px 2px;
         text-decoration: none;
         background-color: #fff;
         border: 1px solid #dee2e6;
         font-size: 13px;
         display: inline-block;
         position: relative;
         width: auto;
         min-width: 10%;
         padding: 0px 8px;
         }
         #app-navigation ul li ul li ul {
         min-width: 8%;
         left: 10px;
         background: #D3D3D3;
         position: absolute;
         z-index: 999;
         display: none;
         }
         #app-navigation ul li ul li ul li {
         display: block;
         width: 100%;
         border-bottom: 1px solid #ffffff;
         }
         #app-navigation ul li ul li:hover ul {
         display: block;
         }
      </style>
   </head>
   <body
      class="sidebar-mini control-sidebar-slide-open layout-navbar-fixed layout-fixed">
      <div class="wrapper">
         <!-- Preloader -->
         <div
            class="preloader flex-column justify-content-center align-items-center">
            <img class="animation__shake" src="dist/img/AdminLTELogo.png"
               alt="AdminLTELogo" height="60" width="60">
         </div>
         <!-- Navbar -->
         <nav class="main-header navbar navbar-expand navbar-light bg-info">
            <!-- Left navbar links -->
            <!-- Left navbar links -->
            <ul class="navbar-nav">
               <li class="nav-item"><a class="nav-link" data-widget="pushmenu"
                  href="#" role="button" style="color: #fff"><i
                  class="fas fa-bars"></i></a></li>
               <li class="nav-item"><a class="nav-link" style="color: #fff">${headerItem?if_exists}
                  <#if subHeaderItem?has_content>-> ${subHeaderItem?if_exists}</#if>
                  </a>
               </li>
            </ul>
            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
               <li class="nav-item"><a class="nav-link"
                  data-widget="fullscreen" href="#" role="button"> <i
                  class="fas fa-expand-arrows-alt"></i>
                  </a>
               </li>
               <!-- Notifications Dropdown Menu -->
               <li class="nav-item dropdown">
                  <a class="nav-link"
                     data-toggle="dropdown" href="#"> <img
                     src="/nthphase/nthphase/sample_user.jpg" height="30px"
                     style="border-radius: 50%;">
                  </a>
                  <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right"
                  style="width:"10%">
                  <div class="dropdown-divider"></div>
                  <a href="#" class="dropdown-item"> <i>
                  ${userLogin.userLoginId?if_exists}</i>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a href="<@ofbizUrl>logout</@ofbizUrl>"> <i> <img
                     src="/nthphase/nthphase/logout_icon.png" height="15px"
                     style="padding-right: 5px;"> ${uiLabelMap.CommonLogout}
                  </i></a>
      </div>
      </li>
      </ul>
      </nav>
      <!-- /.navbar -->
      <!-- Main Sidebar Container -->
      <aside class="main-sidebar elevation-4 sidebar-light-info">
         <!-- Brand Logo -->
         <a href="#" class="brand-link bg-info"> <span
            class="brand-text font-weight-bold">Nth Phase</span>
         </a>
         <!-- Sidebar -->
         <div class="sidebar">
            <!-- Sidebar user (optional) -->
            <!-- SidebarSearch Form -->
            <div class="form-inline">
               <div class="input-group" data-widget="sidebar-search">
                  <input class="form-control form-control-sidebar" type="search"
                     placeholder="Search" aria-label="Search">
                  <div class="input-group-append">
                     <button class="btn btn-sidebar">
                     <i class="fas fa-search fa-fw"></i>
                     </button>
                  </div>
               </div>
            </div>
            <!-- Sidebar Menu -->
            <nav class="mt-2">
               <ul class="nav nav-pills nav-sidebar flex-column"
                  data-widget="treeview" role="menu" data-accordion="false">
                  <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                  <#list displayApps as display> <#assign
                  thisApp=display.getContextRoot()> <#assign
                  permission=true> <#assign selected=false> <#if
                  display.name !="content"> <#assign
                  permissions=display.getBasePermission()> <#list
                  permissions as perm> <#if (perm !="NONE"
                  && !security.hasEntityPermission(perm, "_VIEW", session) && !authz.hasPermission(session, perm, requestParameters))>
                  <#-- User must have ALL permissions in the base-permission list
                  --> <#assign permission=false></#if> </#list></#if> <#if permission== true>
                  <#if thisApp== contextPath || contextPath + "/" == thisApp>
                  <#assign selected=true></#if> <#assign thisURL=thisApp>
                  <#if thisApp !="/"> <#assign thisURL=thisURL+"/control/main"></#if>
                  <#if layoutSettings.suppressTab?exists && display.name==
                  layoutSettings.suppressTab> <!-- do not display this component-->
                  <#else>
                  <li class="nav-item" id="${display.name}">
                     <a
                     href="${thisURL + externalKeyParam}"<#if selected>
                     class="nav-link active" </#if> class="nav-link"> <img
                        src="/nthphase/images/df_menu.jpg" height="20px">
                     <p>${display.title}</p>
                     <#if selected> <i class="fas fa-angle-right right"></i> <#else><i class="fas fa-angle-left right"></i></#if>
                     </a>
                     <!--<ul class="nav nav-treeview">
                        <li class="nav-item"><a
                        	href="${thisURL + externalKeyParam}"<#if selected>
                        		class="nav-link active" </#if> class="nav-link"> <i
                        		class="far fa-circle nav-icon"></i>
                        		<p>${display.title}</p> </a></li>
                        </ul>-->
                  </li>
                  </#if></#if></#list>
                  <#list displaySecondaryApps as display> <#assign
                  thisApp=display.getContextRoot()> <#assign
                  permission=true> <#assign selected=false> <#assign
                  permissions=display.getBasePermission()> <#list
                  permissions as perm> <#if (perm !="NONE"
                  && !security.hasEntityPermission(perm, "_VIEW", session) && !authz.hasPermission(session, perm, requestParameters))>
                  <#-- User must have ALL permissions in the base-permission list
                  --> <#assign permission=false></#if> </#list> <#if permission== true>
                  <#if thisApp== contextPath || contextPath + "/" == thisApp>
                  <#assign selected=true></#if> <#assign thisURL=thisApp>
                  <#if thisApp !="/"> <#assign thisURL=thisURL+"/control/main"></#if>
                  <#if layoutSettings.suppressTab?exists && display.name==
                  layoutSettings.suppressTab> <!-- do not display this component-->
                  <#else> <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                  <li class="nav-item">
                     <a href="${thisURL + externalKeyParam}"<#if
                     selected> class="nav-link active" </#if> class="nav-link"> <img
                        src="/nthphase/images/df_menu.jpg" height="20px">
                     <p>${display.title}</p>
                     <#if selected> <i class="fas fa-angle-right right"></i> <#else><i class="fas fa-angle-left right"></i></#if>
                     </a>
                     <!--<ul class="nav nav-treeview">
                        <li class="nav-item"><a
                        	href="${thisURL + externalKeyParam}"<#if selected>
                        		class="nav-link active" </#if> class="nav-link"> <i
                        		class="far fa-circle nav-icon"></i>
                        		<p>${display.title}</p> </a></li>
                        </ul>-->
                  </li>
                  </#if></#if></#list>
               </ul>
            </nav>
            <!-- /.sidebar-menu -->
         </div>
         <!-- /.sidebar -->
      </aside>
      </div>
      <!-- ./wrapper -->
      <!-- jQuery -->
      <script language="javascript" type="text/javascript"
         src="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/jquery/jquery.min.js</@ofbizContentUrl>"></script>
      <!-- jQuery UI 1.11.4 -->
      <script language="javascript" type="text/javascript"
         src="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/jquery-ui/jquery-ui.min.js</@ofbizContentUrl>"></script>
      <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
      <!-- Bootstrap 4 -->
      <script language="javascript" type="text/javascript"
         src="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/bootstrap/js/bootstrap.bundle.min.js</@ofbizContentUrl>"></script>
      <!-- ChartJS -->
      <script language="javascript" type="text/javascript"
         src="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/chart.js/Chart.min.js</@ofbizContentUrl>"></script>
      <!-- Sparkline -->
      <script language="javascript" type="text/javascript"
         src="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/sparklines/sparkline.js</@ofbizContentUrl>"></script>
      <!-- JQVMap -->
      <script language="javascript" type="text/javascript"
         src="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/jqvmap/jquery.vmap.min.js</@ofbizContentUrl>"></script>
      <script language="javascript" type="text/javascript"
         src="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/jqvmap/maps/jquery.vmap.usa.js</@ofbizContentUrl>"></script>
      <!-- jQuery Knob Chart -->
      <script language="javascript" type="text/javascript"
         src="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/jquery-knob/jquery.knob.min.js</@ofbizContentUrl>"></script>
      <!-- daterangepicker -->
      <script language="javascript" type="text/javascript"
         src="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/moment/moment.min.js</@ofbizContentUrl>"></script>
      <script language="javascript" type="text/javascript"
         src="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/daterangepicker/daterangepicker.js</@ofbizContentUrl>"></script>
      <!-- Tempusdominus Bootstrap 4 -->
      <script language="javascript" type="text/javascript"
         src="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js</@ofbizContentUrl>"></script>
      <!-- Summernote -->
      <script language="javascript" type="text/javascript"
         src="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/jquery-ui/jquery-ui.min.js</@ofbizContentUrl>"></script>
      <!-- overlayScrollbars -->
      <script language="javascript" type="text/javascript"
         src="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js</@ofbizContentUrl>"></script>
      <!-- AdminLTE App -->
      <script language="javascript" type="text/javascript"
         src="<@ofbizContentUrl>/nthphase/jquery/plugins/sidr/js/adminlte.min.js</@ofbizContentUrl>"></script>
   </body>
   <script type="text/javascript">
      $(document).ready(function() {
      	$(".button-bar tab-bar ul li ul").find('li').each(function() {
      		var current = $(this);
      		var inHtml = current.html();
      		alert(inHtml);
      		//$('#menuList').append(new Option(an, an))
      	});
      });
   </script>
</html>
</#if>