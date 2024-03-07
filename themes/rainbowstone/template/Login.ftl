<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
    }
    .login-container {
      max-width: 350px;
      margin: 50px auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .login-container h3 {
      margin-bottom: 20px;
      text-align: center;
    }
    .login-container form {
      text-align: center;
    }
    .login-container input[type="text"],
    .login-container input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 3px;
      box-sizing: border-box;
      box-shadow: 0 0 5px #009C8C
    }
    .login-container input[type="submit"] {
      width: 100%;
      padding: 10px;
      background-color: #009dc4;
      color: #fff;
      border: none;
      border-radius: 3px;
      cursor: pointer;
      transition: background-color 0.3s;
    }
    .login-container input[type="submit"]:hover {
      background-color: #0056b3;
    }
    h3{
      background-color: #009dc4;
    }
    .login-container .forgot-password {
      margin-top: 10px;
      display: block;
      text-decoration: none;
      color: #007bff;
    }
    /* Additional styling for enhanced UI */
    .login-container img {
      margin-bottom: 15px;
    }
    .login-container .input-group {
      position: relative;
      margin-bottom: 30px;
    }
    .login-container .input-group i {
      position: absolute;
      left: 10px;
      top: 15px;
      color: #007bff;
    }
    .login-container .input-group input {
      padding-left: 30px;
    }
  </style>
</head>
<body>

<#if requestAttributes.uiLabelMap??><#assign uiLabelMap = requestAttributes.uiLabelMap></#if>
<#assign useMultitenant = Static["org.apache.ofbiz.base.util.UtilProperties"].getPropertyValue("general.properties", "multitenant")>

<#assign username = requestParameters.USERNAME?default((sessionAttributes.autoUserLogin.userLoginId)?default(""))>
<#if username != "">
  <#assign focusName = false>
<#else>
  <#assign focusName = true>
</#if>

<div class="login-container">
  <h3><img src="/nthphase/images/logo-white.png" height="35px" style="padding-right: 5px;"></h3>
  <form method="post" action="<@ofbizUrl>login</@ofbizUrl>" name="loginform">
    <div class="input-group">
      <i class="fa fa-user"></i>
      <input type="text" name="USERNAME" placeholder="Username" value="${username}" required/>
    </div>
    <div class="input-group">
      <i class="fa fa-lock"></i>
      <input type="password" name="PASSWORD" placeholder="Password" required/>
    </div>
    <#if ("Y" == useMultitenant) >
      <#if !requestAttributes.userTenantId??>
        <input type="text" name="userTenantId" placeholder="Tenant ID" value="${parameters.userTenantId!}"/>
      <#else>
        <input type="hidden" name="userTenantId" value="${requestAttributes.userTenantId!}"/>
      </#if>
    </#if>
    <input type="submit" value="Login"/>
  </form>
  <div style="text-align: center; font-size:12px;"><a href="<@ofbizUrl>forgotPassword_step1</@ofbizUrl>" class="forgot-password">Forgot your password?</a></div>
</div>

<script>
  document.loginform.JavaScriptEnabled.value = "Y";
  document.loginform.USERNAME.focus();
</script>

</body>
</html>
