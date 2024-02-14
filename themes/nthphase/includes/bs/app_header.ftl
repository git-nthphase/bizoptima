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
<html lang="en">
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
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-light bg-cyan">
  
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="index3.html" class="nav-link">${title?if_exists}</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
          <i class="fas fa-search"></i>
        </a>
        <div class="navbar-search-block">
          <form class="form-inline">
            <div class="input-group input-group-sm">
              <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
              <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
                </button>
                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </li>

      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">3</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Brad Diesel
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">Call me whenever you can...</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  John Pierce
                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">I got your message bro</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Nora Silvester
                  <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">The subject goes here</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
        </div>
      </li>

      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script language="javascript" type="text/javascript" src="<@ofbizContentUrl>/images/jquery/plugins/sidr/plugins/jquery/jquery.min.js</@ofbizContentUrl>"></script>
<!-- Bootstrap 4 -->
<script language="javascript" type="text/javascript" src="<@ofbizContentUrl>/images/jquery/plugins/sidr/plugins/bootstrap/js/bootstrap.bundle.min.js</@ofbizContentUrl>"></script>
<!-- AdminLTE App -->
<script language="javascript" type="text/javascript" src="<@ofbizContentUrl>/images/jquery/plugins/sidr/js/adminlte.min.js</@ofbizContentUrl>"></script>
</body>
</html>
