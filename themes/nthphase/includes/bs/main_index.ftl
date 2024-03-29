<#if userLogin?exists>
<html lang="en">
<#assign externalKeyParam="">
<#assign jsessionid="">
<#assign keepSessionInAppBar="Y">
<#if  keepSessionInAppBar?has_content && keepSessionInAppBar=="Y"> 
	<#if   (requestAttributes.externalLoginKey)?exists> 
		<#assign externalKeyParam="&amp;externalLoginKey=" + requestAttributes.externalLoginKey?if_exists>
	</#if> 
	<#if  (session)?exists && (session.getId())?exists>
		<#assign   jsessionid=session.getId()?if_exists>
	</#if> 
</#if>
<#if (requestAttributes.person)?exists>
	<#assign person = requestAttributes.person>
</#if>
<#if (requestAttributes.partyGroup)?exists>
	<#assign partyGroup =    requestAttributes.partyGroup>
</#if>
	<#assign docLangAttr = locale.toString()?replace("_", "-")> 
	<#assign langDir="ltr"> 
<#if "ar.iw"?contains(docLangAttr?substring(0, 2))>
	<#assign langDir="rtl">
</#if> 

<#if layoutSettings.headerImageLinkUrl?exists>
	<#assign logoLinkURL="${layoutSettings.headerImageLinkUrl}"> 
<#else>
	<#assign logoLinkURL="${layoutSettings.commonHeaderImageLinkUrl}">
</#if>
<#if person?has_content> 
	<#assign  userName=person.firstName?if_exists+ "" + person.middleName?if_exists + " " + person.lastName?if_exists>
<#elseif partyGroup?has_content>
	<#assign  userName=partyGroup.groupName?if_exists> 
<#elseif  userLogin?exists>
	<#assign userName=userLogin.userLoginId>
<#else> 
	<#assign userName="">
</#if>
<#if defaultOrganizationPartyGroupName?has_content>
	<#assign orgName=defaultOrganizationPartyGroupName? if_exists>
<#else>
	<#assign orgName="">
</#if> 
<#if layoutSettings.headerImageUrl?exists>
	<#assign headerImageUrl=layoutSettings.headerImageUrl>
<#elseif  layoutSettings.commonHeaderImageUrl?exists> 
	<#assign  headerImageUrl=layoutSettings.commonHeaderImageUrl> 
<#elseif  layoutSettings.VT_HDR_IMAGE_URL?exists> 
	<#assign  headerImageUrl=layoutSettings.VT_HDR_IMAGE_URL[0]>
</#if> 
<#assign externalKeyParam="">
<#assign jsessionid=""> 
<#assign keepSessionInAppBar="Y"> 
<#if keepSessionInAppBar?has_content && keepSessionInAppBar=="Y"> 
	<#if (requestAttributes.externalLoginKey)?exists>
	 <#assign externalKeyParam="?externalLoginKey=" + requestAttributes.externalLoginKey?if_exists>
	</#if> 
	<#if (session)?exists && (session.getId())?exists> 
	 <#assign jsessionid=session.getId()?if_exists>
	</#if> 
	<#if (externalLoginKey)?exists && (jsessionid)?exists>
	 <#assign externalKeyParam="?jsessionid=${session.getId()}&externalLoginKey=${requestAttributes.externalLoginKey?if_exists}">
	</#if>
</#if>
<#assign ofbizServerName = application.getAttribute("_serverId")?default("default-server")> 
<#assign contextPath=request.getContextPath()> 
<#assign  displayApps=Static["org.apache.ofbiz.webapp.control.LoginWorker"].getAppBarWebInfos(security, userLogin, ofbizServerName, "main")>
<#assign displaySecondaryApps=Static["org.apache.ofbiz.webapp.control.LoginWorker"].getAppBarWebInfos(security, userLogin, ofbizServerName, "secondary")>
<#assign appModelMenu=Static["org.apache.ofbiz.widget.model.MenuFactory"].getMenuFromLocation(applicationMenuLocation,applicationMenuName,visualTheme)>
<#if appModelMenu.getModelMenuItemByName(headerItem)?exists> 
 <#if headerItem!="main">
  <#assign show_last_menu=true>
 </#if> 
</#if>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${layoutSettings.companyName}: &nbsp; <#if
		(page.titleProperty)?has_content> ${uiLabelMap
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
	href="<@ofbizContentUrl>/nthphase/bizStyle.css</@ofbizContentUrl>"
	type="text/css" />
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css">
</head>
<body
  class="sidebar-mini control-sidebar-slide-open layout-navbar-fixed layout-fixed">
  <div class="wrapper">

     <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-light bg-info">
       <!-- Left navbar links -->
         <ul class="navbar-nav">
          <li class="nav-item">
	          <a class="nav-link" data-widget="pushmenu" href="#" role="button" style="color: #fff">
	          	<i class="fas fa-bars"></i>
	          </a>
          </li>
          <li class="nav-item"><a class="nav-link" style="color: #fff">${headerItem?if_exists}
             <#if subHeaderItem?has_content>-> ${subHeaderItem?if_exists}</#if>
             </a>
          </li>
       </ul>
       <!-- Right navbar links -->
       <ul class="navbar-nav ml-auto">
          <!-- Notifications Dropdown Menu -->
          <li class="nav-item dropdown">
             <a class="nav-link" data-toggle="dropdown" href="#"> 
             	<i class="nav-icon fas fa-light fa-user"></i>
             </a>
             <div class="dropdown-menu dropdown-menu-right" style="width:5%">
             <div class="dropdown-divider"></div>
             <a href="#" class="dropdown-item">
				${userLogin.userLoginId?if_exists}
				<span class="float-right text-muted text-sm"></span>
			 </a>
             <div class="dropdown-divider"></div>
             <a  href="<@ofbizUrl>logout</@ofbizUrl>" class="dropdown-item">
				${uiLabelMap.CommonLogout}
				<span class="float-right text-muted text-sm"></span>
			 </a>
            </div>
            </li>
            </ul>
         </nav>
 <!-- /.navbar -->
 <!-- Main Sidebar Container -->
 <aside class="main-sidebar elevation-4 sidebar-light-info">
    <!-- Brand Logo -->
    <div class="form-inline">
    <a href="#" class="brand-link bg-info"> 
    <img src="/nthphase/images/logo-white.png" class="brand-image elevation-4">
    <span class="brand-text font-weight-bold"></span>
    </a>
    </div>
    <!-- Sidebar -->
    <div class="sidebar">

       <!-- Sidebar Menu -->
       <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column"
             data-widget="treeview" role="menu" data-accordion="false">
             <#list displayApps as display>
              <#assign thisApp=display.getContextRoot()>
                <#assign selected=false>
            		<#if thisApp== contextPath || contextPath + "/" == thisApp>
           				  <#assign selected=true>
           			</#if> 
           			<#assign thisURL=thisApp>
             			<#if thisApp !="/">
              				<#assign thisURL=thisURL+"/control/main">
              			</#if>
              	 <#assign menuCla="nav-item">	
              	 <#if selected>
              		<#assign menuCla="nav-item first-item">
              	 <#else>
              	 	<#assign menuCla="nav-item">
              	 </#if>		
	             <li class="${menuCla}" id="${display.name}">
	                <a href="${thisURL + externalKeyParam}"
	                <#if selected>class="nav-link active"><#else>class="nav-link"></#if>  
	                <img src="/nthphase/images/${display.name}.png" height="30px">
	                <p><b>${display.title}</b></p>
	                <!--<#if selected> <i class="fas fa-angle-right right"></i> <#else><i class="fas fa-angle-left right"></i></#if>-->
	                </a>
	             </li>
             </#list>
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
 <script language="javascript" type="text/javascript"
     src="<@ofbizContentUrl>/nthphase/dropdown.js</@ofbizContentUrl>"></script>
     
     
 <script language="javascript" type="text/javascript" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
  <script language="javascript" type="text/javascript" src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap4.min.js"></script>
</body>
</#if>
<script type="text/javascript">
 $(document).ready(function() {
 	$(".button-bar tab-bar ul li ul").find('li').each(function() {
 		var current = $(this);
 		var inHtml = current.html();
 		//$('#menuList').append(new Option(an, an))
 	});
 	$('#app-navigation ul li ul li a').addClass('btn btn-block bg-gradient-info btn-xs');
 });
</script>
</html>
