<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Facility</title>
</head>
<body class="hold-transition sidebar-mini">
	<!-- Main content -->
	<div class="card">
		<div class="card-header">
			<ul class="nav nav-tabs" id="custom-tabs-three-tab" role="tablist">
				<li class="nav-item"><a class="nav-link active"
					id="createCustomer-tab" data-toggle="pill" href="#createCustomer"
					role="tab" aria-controls="createCustomer" aria-selected="true">
						Create Customer</a></li>
				<li class="nav-item"><a class="nav-link"
					id="createProspect-tab" data-toggle="pill" href="#createProspect"
					role="tab" aria-controls="createProspect" aria-selected="false">
						Create Prospect </a></li>
				<li class="nav-item"><a class="nav-link"
					id="createEmployee-tab" data-toggle="pill" href="#createEmployee"
					role="tab" aria-controls="createEmployee" aria-selected="false">
						Create Employee </a></li>

			</ul>
		</div>
		<div class="card-body">
			<div class="tab-content" id="custom-tabs-three-tabContent">
				<div class="tab-pane fade show active" id="createCustomer" role="tabpanel"
					aria-labelledby="createCustomer-tab">
				    <div class="card card-default" data-select2-id="29">
						<div class="card-header">
							<h3 class="card-title">Create Customer</h3>
							<div class="card-tools">
								<button type="button" class="btn btn-tool"
									data-card-widget="collapse">
									<i class="fas fa-minus"></i>
								</button>
							</div>
						</div>
						<div class="card-body">
						<form method="post" action="/Masters/control/createCustomer" id="NewUser" data-focus-field="USER_TITLE" class="basic-form requireValidation" onsubmit="javascript:submitFormDisableSubmits(this)" name="NewUser">
  							<input type="hidden" name="USE_ADDRESS" id="NewUser_USE_ADDRESS">
 							 <input type="hidden" name="require_email" id="NewUser_require_email">
 							 
 							 <div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_PARTY_ID" id="NewUser_USER_PARTY_ID_title">Party ID</span>
											<input type="text" class="form-control col-6" name="USER_PARTY_ID" size="25" id="NewUser_USER_PARTY_ID" require="">
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_TITLE" id="NewUser_USER_TITLE_title">Title</span> 
											<input type="text" class="form-control col-6" name="USER_TITLE" size="10" maxlength="30" id="NewUser_USER_TITLE" >
										</div>
									</div>
								</div>	
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_FIRST_NAME" id="NewUser_USER_FIRST_NAME_title">First name</span> 
											<input type="text" class="form-control col-6 required" name="USER_FIRST_NAME"  id="NewUser_USER_FIRST_NAME" required="true"> 
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_MIDDLE_NAME" id="NewUser_USER_MIDDLE_NAME_title">Middle initial</span>
											<input type="text" class="form-control col-6" name="USER_MIDDLE_NAME" id="NewUser_USER_MIDDLE_NAME" >
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_LAST_NAME" id="NewUser_USER_LAST_NAME_title">Last name</span> 
											<input type="text" class="form-control col-6 required" name="USER_LAST_NAME"  id="NewUser_USER_LAST_NAME" required="true">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_SUFFIX" id="NewUser_USER_SUFFIX_title">Suffix</span> 
											<input type="text" class="form-control col-6" name="USER_SUFFIX"  id="NewUser_USER_SUFFIX" require="">  
										</div>
									</div>
								</div>		
							<div class="row">
							<div class="form-group">
							    <span for="NewUser_ShippingAddressTitle" id="NewUser_ShippingAddressTitle_title">Mailing/Shipping Address</span> 
							    </div>
							</div>  
							
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_ADDRESS1" id="NewUser_USER_ADDRESS1_title">Address 1</span>  
											<input type="text" class="form-control col-6 required" name="USER_ADDRESS1" id="NewUser_USER_ADDRESS1" required="true">
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_ADDRESS2" id="NewUser_USER_ADDRESS2_title">Address 2</span>
											<input type="text" class="form-control col-6" name="USER_ADDRESS2"  id="NewUser_USER_ADDRESS2" require=""> 
										</div>
									</div>
								</div> 
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_CITY" id="NewUser_USER_CITY_title">City</span> 
											<input type="text" class="form-control col-6 required" name="USER_CITY"   id="NewUser_USER_CITY" required="true">
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_STATE" id="NewUser_USER_STATE_title">State</span> 
											<select name="USER_STATE" class="form-control col-6" class="required" id="NewUser_USER_STATE" >
                                                <#if displayStateList?has_content>
                                                  <#list displayStateList as stateList>
                                                  <option value="${stateList.geoId}">${stateList.geoId}: ${stateList.geoName}</option>
                                                  </#list>
                                                  </#if>       
                                            </select>
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_POSTAL_CODE" id="NewUser_USER_POSTAL_CODE_title">Zip/Postal Code</span>  
											<input type="text" class="form-control col-6 required" name="USER_POSTAL_CODE"  size="10" maxlength="30" id="NewUser_USER_POSTAL_CODE" required="true"> 
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_COUNTRY" id="NewUser_USER_COUNTRY_title">Country</span>   
											 <select name="USER_COUNTRY" class="form-control col-6 required"  id="NewUser_USER_COUNTRY">
                                                  <#if displayCountryList?has_content>
                                                  <#list displayCountryList as countryList>
                                                  <option value="${countryList.geoId}">${countryList.geoId}: ${countryList.geoName}</option>
                                                  </#list>
                                                  </#if>    
                                            </select>
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_ADDRESS_ALLOW_SOL" id="NewUser_USER_ADDRESS_ALLOW_SOL_title">Allow Address Solicitation?</span>
											 <select name="USER_ADDRESS_ALLOW_SOL" class="form-control col-3" id="NewUser_USER_ADDRESS_ALLOW_SOL" >
											 <option>&nbsp;</option>
											 <option value="Y">${uiLabelMap.CommonY}</option>
											 <option value="N">${uiLabelMap.CommonN}</option>  
											 
											 </select>  
										</div>
									</div>	
							</div>
						<div class="row">
							<div class="form-group">
							    <span for="NewUser_HomePhoneTitle" id="NewUser_HomePhoneTitle_title">Home phone</span> 
							    </div>
							</div>
						<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_HOME_COUNTRY" id="NewUser_USER_HOME_COUNTRY_title">Country Code</span>  
											<input type="text" class="form-control col-6" name="USER_HOME_COUNTRY" size="4" maxlength="10" id="NewUser_USER_HOME_COUNTRY" require="">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_HOME_AREA" id="NewUser_USER_HOME_AREA_title">Area Code</span> 
											<input type="text" class="form-control col-6" name="USER_HOME_AREA" size="4" maxlength="10" id="NewUser_USER_HOME_AREA" require="">  
										</div>
									</div>
								</div>	
						<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_HOME_CONTACT" id="NewUser_USER_HOME_CONTACT_title">Phone Number</span>   
											<input type="text" class="form-control col-6" name="USER_HOME_CONTACT" size="15" maxlength="15" id="NewUser_USER_HOME_CONTACT" require=""> 
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_HOME_EXT" id="NewUser_USER_HOME_EXT_title">ext</span>  
											<input type="text" class="form-control col-6" name="USER_HOME_EXT" size="6" maxlength="10" id="NewUser_USER_HOME_EXT" require="">   
										</div>
									</div>
								</div>	
						<div class="row">
									<div class="col">
										<div class="form-group">
										<span for="NewUser_USER_HOME_ALLOW_SOL" id="NewUser_USER_HOME_ALLOW_SOL_title">Allow Solicitation?</span> 
										<select name="USER_HOME_ALLOW_SOL" class="form-control col-3" id="NewUser_USER_HOME_ALLOW_SOL" >
      												  <option value="">&nbsp;</option>
         											 <option value="Y">Y</option>          
         											 <option value="N">N</option>     
         								 </select>	
         								 </div>
         								 </div>
         				</div>
         				<div class="row">
							<div class="form-group">
							    <span for="NewUser_WorkPhoneTitle" id="NewUser_WorkPhoneTitle_title">Work Phone Number</span> 
							    </div>
							</div>
						<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_WORK_COUNTRY" id="NewUser_USER_WORK_COUNTRY_title">Country Code</span>   
											<input type="text" class="form-control col-6"  name="USER_WORK_COUNTRY" size="4" maxlength="10" id="NewUser_USER_WORK_COUNTRY" require="">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_WORK_AREA" id="NewUser_USER_WORK_AREA_title">Area Code</span> 
											<input type="text" class="form-control col-6"  name="USER_WORK_AREA" size="4" maxlength="10" id="NewUser_USER_WORK_AREA" require="">    
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_WORK_CONTACT" id="NewUser_USER_WORK_CONTACT_title">Phone Number</span> 
											<input type="text" class="form-control col-6"  name="USER_WORK_CONTACT" size="15" maxlength="15" id="NewUser_USER_WORK_CONTACT" require="">    
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_WORK_EXT" id="NewUser_USER_WORK_EXT_title">ext</span>  </td>

											<input type="text" class="form-control col-6"  name="USER_WORK_EXT" size="6" maxlength="10" id="NewUser_USER_WORK_EXT" require="">  
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_WORK_ALLOW_SOL" id="NewUser_USER_WORK_ALLOW_SOL_title">Allow Solicitation?</span> 
											<select name="USER_WORK_ALLOW_SOL" class="form-control col-3"  id="NewUser_USER_WORK_ALLOW_SOL" >
      											  <option value="">&nbsp;</option>
        										  <option value="Y">Y</option>           
        										  <option value="N">N</option>     
        								  </select>  
										</div>
									</div>
								</div>							
							<div class="row">
							<div class="form-group">
							    <span for="NewUser_FaxPhoneTitle" id="NewUser_FaxPhoneTitle_title">Fax Number</span>
							    </div>
							</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_FAX_COUNTRY" id="NewUser_USER_FAX_COUNTRY_title">Country Code</span>  
											<input type="text" class="form-control col-6" name="USER_FAX_COUNTRY" size="4" maxlength="10" id="NewUser_USER_FAX_COUNTRY" require="">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_FAX_AREA" id="NewUser_USER_FAX_AREA_title">Area Code</span> 

											<input type="text" class="form-control col-6" name="USER_FAX_AREA" size="4" maxlength="10" id="NewUser_USER_FAX_AREA" require="">  
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_FAX_CONTACT" id="NewUser_USER_FAX_CONTACT_title">Phone Number</span>  
											<input type="text" class="form-control col-6" name="USER_FAX_CONTACT" size="15" maxlength="15" id="NewUser_USER_FAX_CONTACT" require="">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_FAX_EXT" id="NewUser_USER_FAX_EXT_title">ext</span> 

											<input type="text" class="form-control col-6" name="USER_FAX_EXT" size="6" maxlength="10" id="NewUser_USER_FAX_EXT" require="">    
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
										<span for="NewUser_USER_FAX_ALLOW_SOL" id="NewUser_USER_FAX_ALLOW_SOL_title">Allow Solicitation?</span> 
										 <select name="USER_FAX_ALLOW_SOL" class="form-control col-3" id="NewUser_USER_FAX_ALLOW_SOL" >
       											 <option value="">&nbsp;</option>
        										  <option value="Y">Y</option>          
        										  <option value="N">N</option>     
        										  </select>		
         								 	</div>
         								 	</div>
         						</div>
         					<div class="row">
							<div class="form-group">
							    <span for="NewUser_MobilePhoneTitle" id="NewUser_MobilePhoneTitle_title">Mobile Phone Number</span>
							    </div>
							</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_MOBILE_COUNTRY" id="NewUser_USER_MOBILE_COUNTRY_title">Country Code</span>
											<input type="text" class="form-control col-6" name="USER_MOBILE_COUNTRY" size="4" maxlength="10" id="NewUser_USER_MOBILE_COUNTRY" require="">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_MOBILE_AREA" id="NewUser_USER_MOBILE_AREA_title">Area Code</span> 

											<input type="text" class="form-control col-6" name="USER_MOBILE_AREA" size="4" maxlength="10" id="NewUser_USER_MOBILE_AREA" require="">     
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_MOBILE_CONTACT" id="NewUser_USER_MOBILE_CONTACT_title">Phone Number</span>
											<input type="text" class="form-control col-6" name="USER_MOBILE_CONTACT" size="15" maxlength="15" id="NewUser_USER_MOBILE_CONTACT" require="">   
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_MOBILE_ALLOW_SOL" id="NewUser_USER_MOBILE_ALLOW_SOL_title">Allow Solicitation?</span>   

											<select name="USER_MOBILE_ALLOW_SOL" class="form-control col-6" id="NewUser_USER_MOBILE_ALLOW_SOL" >
        										<option value="">&nbsp;</option>
          										<option value="Y">Y</option>           
          										<option value="N">N</option>     
          										</select>     
										</div>
									</div>
								</div>	
							<div class="row">
							<div class="form-group">
							   <span for="NewUser_EmailAddressTitle" id="NewUser_EmailAddressTitle_title">E-Mail Address</span>  
							    </div>
							</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_EMAIL" id="NewUser_USER_EMAIL_title">Email</span> 
											<input type="text" class="form-control col-6 required" name="USER_EMAIL"  size="60" maxlength="250" id="NewUser_USER_EMAIL" required="true"> 
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_EMAIL_ALLOW_SOL" id="NewUser_USER_EMAIL_ALLOW_SOL_title">Allow Solicitation?</span> 

											<select name="USER_EMAIL_ALLOW_SOL" class="form-control col-6" id="NewUser_USER_EMAIL_ALLOW_SOL" >
        												<option value="">&nbsp;</option>
         												 <option value="Y">Y</option>           
         												 <option value="N">N</option>     
         									</select>   
										</div>
									</div>
								</div>	
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USERNAME" id="NewUser_USERNAME_title">User Name</span>
											<input type="text" class="form-control col-6 required" name="USERNAME"  size="30" maxlength="250" id="NewUser_USERNAME" required="true">
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_PASSWORD" id="NewUser_PASSWORD_title">Password</span>  

											 <input type="password" class="form-control col-6 required" name="PASSWORD" size="15" maxlength="250" id="NewUser_PASSWORD" required="true">    
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_CONFIRM_PASSWORD" id="NewUser_CONFIRM_PASSWORD_title">Password</span> 
											 <input type="password" class="form-control col-6 required"  name="CONFIRM_PASSWORD" size="15" maxlength="250" id="NewUser_CONFIRM_PASSWORD" required="true"> 
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_PRODUCT_STORE_ID" id="NewUser_PRODUCT_STORE_ID_title">Product Store</span>   

											 <select name="PRODUCT_STORE_ID" class="required  form-control col-6" id="NewUser_PRODUCT_STORE_ID" >
                     								<option value="9000">OFBiz E-Commerce Store (9000)</option>     
                     						</select>
										</div>
									</div>
								</div>	
							<div class="row">
									<div class="col-md-5"></div>
									<div class="col">									
									<input type="submit" class="btn btn-info btn-xs" id="createCustomer_submitButton" name="submitButton" value="Save">
									</div>
								</div>					
								  		</form></div></div>  				
					
				</div>
				<div class="tab-pane fade" id="createProspect" role="tabpanel"
					aria-labelledby="createProspect-tab">
				<div class="card card-default" data-select2-id="29">
						<div class="card-header">
							<h3 class="card-title">Create Prospect</h3>
							<div class="card-tools">
								<button type="button" class="btn btn-tool"
									data-card-widget="collapse">
									<i class="fas fa-minus"></i>
								</button>
							</div>
						</div>
						<div class="card-body">
						<form method="post" action="/partymgr/control/createProspect" id="NewUser" data-focus-field="USER_TITLE" class="basic-form requireValidation" onsubmit="javascript:submitFormDisableSubmits(this)" name="NewUser">
  								<input type="hidden" name="USE_ADDRESS" id="NewUser_USE_ADDRESS">
  										<input type="hidden" name="require_email" id="NewUser_require_email">
 							 
 							 <div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_PARTY_ID" id="NewUser_USER_PARTY_ID_title">Party ID</span>
											<input type="text" class="form-control col-6" name="USER_PARTY_ID" size="25" id="NewUser_USER_PARTY_ID" require="">
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_TITLE" id="NewUser_USER_TITLE_title">Title</span> 
											<input type="text" class="form-control col-6" name="USER_TITLE" size="10" maxlength="30" id="NewUser_USER_TITLE" >
										</div>
									</div>
								</div>	
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_FIRST_NAME" id="NewUser_USER_FIRST_NAME_title">First name</span> 
											<input type="text" class="form-control col-6 required" name="USER_FIRST_NAME"  id="NewUser_USER_FIRST_NAME" required="true"> 
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_MIDDLE_NAME" id="NewUser_USER_MIDDLE_NAME_title">Middle initial</span>
											<input type="text" class="form-control col-6" name="USER_MIDDLE_NAME" id="NewUser_USER_MIDDLE_NAME" require="">
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_LAST_NAME" id="NewUser_USER_LAST_NAME_title">Last name</span> 
											<input type="text" class="form-control col-6 required" name="USER_LAST_NAME"  id="NewUser_USER_LAST_NAME" required="true">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_SUFFIX" id="NewUser_USER_SUFFIX_title">Suffix</span> 
											<input type="text" class="form-control col-6" name="USER_SUFFIX"  id="NewUser_USER_SUFFIX" require="">  
										</div>
									</div>
								</div>		
							<div class="row">
							<div class="form-group">
							    <span for="NewUser_ShippingAddressTitle" id="NewUser_ShippingAddressTitle_title">Mailing/Shipping Address</span> 
							    </div>
							</div>  
							
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_ADDRESS1" id="NewUser_USER_ADDRESS1_title">Address 1</span>  
											<input type="text" class="form-control col-6 required " name="USER_ADDRESS1"  id="NewUser_USER_ADDRESS1" required="true">
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_ADDRESS2" id="NewUser_USER_ADDRESS2_title">Address 2</span>
											<input type="text" class="form-control col-6" name="USER_ADDRESS2"  id="NewUser_USER_ADDRESS2" require=""> 
										</div>
									</div>
								</div> 
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_CITY" id="NewUser_USER_CITY_title">City</span> 
											<input type="text" class="form-control col-6 required" name="USER_CITY"  id="NewUser_USER_CITY" required="true"> 
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_STATE" id="NewUser_USER_STATE_title">State</span> 
											<select name="USER_STATE" class="form-control col-6 required" id="NewUser_USER_STATE" >
                                                  <option value="Y"> </option>     
                                            </select>
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_POSTAL_CODE" id="NewUser_USER_POSTAL_CODE_title">Zip/Postal Code</span>  
											<input type="text" class="form-control col-6 required" name="USER_POSTAL_CODE"  size="10" maxlength="30" id="NewUser_USER_POSTAL_CODE" required="true">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_COUNTRY" id="NewUser_USER_COUNTRY_title">Country</span>   
											 <select name="USER_COUNTRY" class="form-control col-6 required"   id="NewUser_USER_COUNTRY">
                                                  
                                                  <#if displayCountryList?has_content>
                                                  <#list displayCountryList as countryList>
                                                  <option value="${countryList.geoId}">${countryList.geoId}: ${countryList.geoName}</option>
                                                  </#list>
                                                  </#if>    
                                            </select>
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_ADDRESS_ALLOW_SOL" id="NewUser_USER_ADDRESS_ALLOW_SOL_title">Allow Address Solicitation?</span>
											 <select name="USER_ADDRESS_ALLOW_SOL" class="form-control col-3" id="NewUser_USER_ADDRESS_ALLOW_SOL" >
											 <option>&nbsp;</option>
											 <option value="Y">${uiLabelMap.CommonY}</option>
											 <option value="N">${uiLabelMap.CommonN}</option>  
											 
											 </select>  
										</div>
									</div>	
							</div>
						<div class="row">
							<div class="form-group">
							    <span for="NewUser_HomePhoneTitle" id="NewUser_HomePhoneTitle_title">Home phone</span> 
							    </div>
							</div>
						<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_HOME_COUNTRY" id="NewUser_USER_HOME_COUNTRY_title">Country Code</span>  
											<input type="text" class="form-control col-6" name="USER_HOME_COUNTRY" size="4" maxlength="10" id="NewUser_USER_HOME_COUNTRY" require="">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_HOME_AREA" id="NewUser_USER_HOME_AREA_title">Area Code</span> 
											<input type="text" class="form-control col-6" name="USER_HOME_AREA" size="4" maxlength="10" id="NewUser_USER_HOME_AREA" require="">  
										</div>
									</div>
								</div>	
						<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_HOME_CONTACT" id="NewUser_USER_HOME_CONTACT_title">Phone Number</span>   
											<input type="text" class="form-control col-6" name="USER_HOME_CONTACT" size="15" maxlength="15" id="NewUser_USER_HOME_CONTACT" require=""> 
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_HOME_EXT" id="NewUser_USER_HOME_EXT_title">ext</span>  
											<input type="text" class="form-control col-6" name="USER_HOME_EXT" size="6" maxlength="10" id="NewUser_USER_HOME_EXT" require="">   
										</div>
									</div>
								</div>	
						<div class="row">
									<div class="col">
										<div class="form-group">
										<span for="NewUser_USER_HOME_ALLOW_SOL" id="NewUser_USER_HOME_ALLOW_SOL_title">Allow Solicitation?</span> 
										<select name="USER_HOME_ALLOW_SOL" class="form-control col-3" id="NewUser_USER_HOME_ALLOW_SOL" >
      												  <option value="">&nbsp;</option>
         											 <option value="Y">Y</option>          
         											 <option value="N">N</option>     
         								 </select>	
         								 </div>
         								 </div>
         				</div>
         				<div class="row">
							<div class="form-group">
							    <span for="NewUser_WorkPhoneTitle" id="NewUser_WorkPhoneTitle_title">Work Phone Number</span> 
							    </div>
							</div>
						<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_WORK_COUNTRY" id="NewUser_USER_WORK_COUNTRY_title">Country Code</span>   
											<input type="text" class="form-control col-6"  name="USER_WORK_COUNTRY" size="4" maxlength="10" id="NewUser_USER_WORK_COUNTRY" require="">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_WORK_AREA" id="NewUser_USER_WORK_AREA_title">Area Code</span> 
											<input type="text" class="form-control col-6"  name="USER_WORK_AREA" size="4" maxlength="10" id="NewUser_USER_WORK_AREA" require="">    
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_WORK_CONTACT" id="NewUser_USER_WORK_CONTACT_title">Phone Number</span> 
											<input type="text" class="form-control col-6"  name="USER_WORK_CONTACT" size="15" maxlength="15" id="NewUser_USER_WORK_CONTACT" require="">    
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_WORK_EXT" id="NewUser_USER_WORK_EXT_title">ext</span>  </td>

											<input type="text" class="form-control col-6"  name="USER_WORK_EXT" size="6" maxlength="10" id="NewUser_USER_WORK_EXT" require="">  
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_WORK_ALLOW_SOL" id="NewUser_USER_WORK_ALLOW_SOL_title">Allow Solicitation?</span> 
											<select name="USER_WORK_ALLOW_SOL" class="form-control col-3"  id="NewUser_USER_WORK_ALLOW_SOL" >
      											  <option value="">&nbsp;</option>
        										  <option value="Y">Y</option>           
        										  <option value="N">N</option>     
        								  </select>  
										</div>
									</div>
								</div>							
							<div class="row">
							<div class="form-group">
							    <span for="NewUser_FaxPhoneTitle" id="NewUser_FaxPhoneTitle_title">Fax Number</span>
							    </div>
							</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_FAX_COUNTRY" id="NewUser_USER_FAX_COUNTRY_title">Country Code</span>  
											<input type="text" class="form-control col-6" name="USER_FAX_COUNTRY" size="4" maxlength="10" id="NewUser_USER_FAX_COUNTRY" require="">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_FAX_AREA" id="NewUser_USER_FAX_AREA_title">Area Code</span> 

											<input type="text" class="form-control col-6" name="USER_FAX_AREA" size="4" maxlength="10" id="NewUser_USER_FAX_AREA" require="">  
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_FAX_CONTACT" id="NewUser_USER_FAX_CONTACT_title">Phone Number</span>  
											<input type="text" class="form-control col-6" name="USER_FAX_CONTACT" size="15" maxlength="15" id="NewUser_USER_FAX_CONTACT" require="">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_FAX_EXT" id="NewUser_USER_FAX_EXT_title">ext</span> 

											<input type="text" class="form-control col-6" name="USER_FAX_EXT" size="6" maxlength="10" id="NewUser_USER_FAX_EXT" require="">    
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
										<span for="NewUser_USER_FAX_ALLOW_SOL" id="NewUser_USER_FAX_ALLOW_SOL_title">Allow Solicitation?</span> 
										 <select name="USER_FAX_ALLOW_SOL" class="form-control col-3" id="NewUser_USER_FAX_ALLOW_SOL" >
       											 <option value="">&nbsp;</option>
        										  <option value="Y">Y</option>          
        										  <option value="N">N</option>     
        										  </select>		
         								 	</div>
         								 	</div>
         						</div>
         					<div class="row">
							<div class="form-group">
							    <span for="NewUser_MobilePhoneTitle" id="NewUser_MobilePhoneTitle_title">Mobile Phone Number</span>
							    </div>
							</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_MOBILE_COUNTRY" id="NewUser_USER_MOBILE_COUNTRY_title">Country Code</span>
											<input type="text" class="form-control col-6" name="USER_MOBILE_COUNTRY" size="4" maxlength="10" id="NewUser_USER_MOBILE_COUNTRY" require="">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_MOBILE_AREA" id="NewUser_USER_MOBILE_AREA_title">Area Code</span> 

											<input type="text" class="form-control col-6" name="USER_MOBILE_AREA" size="4" maxlength="10" id="NewUser_USER_MOBILE_AREA" require="">     
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_MOBILE_CONTACT" id="NewUser_USER_MOBILE_CONTACT_title">Phone Number</span>
											<input type="text" class="form-control col-6" name="USER_MOBILE_CONTACT" size="15" maxlength="15" id="NewUser_USER_MOBILE_CONTACT" require="">   
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_MOBILE_ALLOW_SOL" id="NewUser_USER_MOBILE_ALLOW_SOL_title">Allow Solicitation?</span>   

											<select name="USER_MOBILE_ALLOW_SOL" class="form-control col-6" id="NewUser_USER_MOBILE_ALLOW_SOL" >
        										<option value="">&nbsp;</option>
          										<option value="Y">Y</option>           
          										<option value="N">N</option>     
          										</select>     
										</div>
									</div>
								</div>	
							<div class="row">
							<div class="form-group">
							   <span for="NewUser_EmailAddressTitle" id="NewUser_EmailAddressTitle_title">E-Mail Address</span>  
							    </div>
							</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_EMAIL" id="NewUser_USER_EMAIL_title">Email</span> 
											<input type="text" class="form-control col-6 required" name="USER_EMAIL"  size="60" maxlength="250" id="NewUser_USER_EMAIL" require=""> 
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_EMAIL_ALLOW_SOL" id="NewUser_USER_EMAIL_ALLOW_SOL_title">Allow Solicitation?</span> 

											<select name="USER_EMAIL_ALLOW_SOL" class="form-control col-6" id="NewUser_USER_EMAIL_ALLOW_SOL" >
        												<option value="">&nbsp;</option>
         												 <option value="Y">Y</option>           
         												 <option value="N">N</option>     
         									</select>   
										</div>
									</div>
								</div>	
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USERNAME" id="NewUser_USERNAME_title">User Name</span>
											<input type="text" class="form-control col-6 required" name="USERNAME"  size="30" maxlength="250" id="NewUser_USERNAME" required="true"> 
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_PASSWORD" id="NewUser_PASSWORD_title">Password</span>  

											 <input type="password" class="form-control col-6 required" name="PASSWORD" size="15" maxlength="250" id="NewUser_PASSWORD" required="true">    
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_CONFIRM_PASSWORD" id="NewUser_CONFIRM_PASSWORD_title">Password</span> 
											 <input type="password" class="form-control col-6 required"  name="CONFIRM_PASSWORD" size="15" maxlength="250" id="NewUser_CONFIRM_PASSWORD"   required="true"> 
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_PRODUCT_STORE_ID" id="NewUser_PRODUCT_STORE_ID_title">Product Store</span>   

											 <select name="PRODUCT_STORE_ID" class="required  form-control col-6" id="NewUser_PRODUCT_STORE_ID" >
                     								<option value="9000">OFBiz E-Commerce Store (9000)</option>     
                     						</select>
										</div>
									</div>
								</div>	
							<div class="row">
									<div class="col-md-5"></div>
									<div class="col">
									<input type="submit" class="btn btn-info btn-xs" id="createProspect_submitButton" name="submitButton" value="Save">
								</div>	</div>				
								  		</form></div></div>  	
					
					
					</div>
				<div class="tab-pane fade" id="createEmployee" role="tabpanel"
					aria-labelledby="createEmployee-tab">
				<div class="card card-default" data-select2-id="29">
						<div class="card-header">
							<h3 class="card-title">Create Employee</h3>
							<div class="card-tools">
								<button type="button" class="btn btn-tool"
									data-card-widget="collapse">
									<i class="fas fa-minus"></i>
								</button>
							</div>
						</div>
						<div class="card-body">
						<form method="post" action="/partymgr/control/createEmployee" id="NewUser" data-focus-field="USER_TITLE" class="basic-form requireValidation" onsubmit="javascript:submitFormDisableSubmits(this)" name="NewUser">
  										<input type="hidden" name="USE_ADDRESS" id="NewUser_USE_ADDRESS">
 										 <input type="hidden" name="require_email" id="NewUser_require_email">
 							 
 							 <div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_PARTY_ID" id="NewUser_USER_PARTY_ID_title">Party ID</span>
											<input type="text" class="form-control col-6" name="USER_PARTY_ID" size="25" id="NewUser_USER_PARTY_ID" require="">
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_TITLE" id="NewUser_USER_TITLE_title">Title</span> 
											<input type="text" class="form-control col-6" name="USER_TITLE" size="10" maxlength="30" id="NewUser_USER_TITLE" >
										</div>
									</div>
								</div>	
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_FIRST_NAME" id="NewUser_USER_FIRST_NAME_title">First name</span> 
											<input type="text" class="form-control col-6 required" name="USER_FIRST_NAME"  id="NewUser_USER_FIRST_NAME" require=""> 
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_MIDDLE_NAME" id="NewUser_USER_MIDDLE_NAME_title">Middle initial</span>
											<input type="text" class="form-control col-6" name="USER_MIDDLE_NAME" id="NewUser_USER_MIDDLE_NAME" require="">
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_LAST_NAME" id="NewUser_USER_LAST_NAME_title">Last name</span> 
											<input type="text" class="form-control col-6 required" name="USER_LAST_NAME"  id="NewUser_USER_LAST_NAME" required="true">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_SUFFIX" id="NewUser_USER_SUFFIX_title">Suffix</span> 
											<input type="text" class="form-control col-6" name="USER_SUFFIX"  id="NewUser_USER_SUFFIX" require="">  
										</div>
									</div>
								</div>		
							<div class="row">
							<div class="form-group">
							    <span for="NewUser_ShippingAddressTitle" id="NewUser_ShippingAddressTitle_title">Mailing/Shipping Address</span> 
							    </div>
							</div>  
							
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_ADDRESS1" id="NewUser_USER_ADDRESS1_title">Address 1</span>  
											<input type="text" class="form-control col-6 required" name="USER_ADDRESS1"   id="NewUser_USER_ADDRESS1" required="true">
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_ADDRESS2" id="NewUser_USER_ADDRESS2_title">Address 2</span>
											<input type="text" class="form-control col-6" name="USER_ADDRESS2"  id="NewUser_USER_ADDRESS2" require=""> 
										</div>
									</div>
								</div> 
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_CITY" id="NewUser_USER_CITY_title">City</span> 
											<input type="text" class="form-control col-6 required" name="USER_CITY"   id="NewUser_USER_CITY" required="true"> 
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_STATE" id="NewUser_USER_STATE_title">State</span> 
											<select name="USER_STATE" class="form-control col-6 required"  id="NewUser_USER_STATE" >
                                                  <option value="Y"> </option>     
                                            </select>
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_POSTAL_CODE" id="NewUser_USER_POSTAL_CODE_title">Zip/Postal Code</span>  
											<input type="text" class="form-control col-6 required" name="USER_POSTAL_CODE"  size="10" maxlength="30" id="NewUser_USER_POSTAL_CODE" required="true">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_COUNTRY" id="NewUser_USER_COUNTRY_title">Country</span>   
											 <select name="USER_COUNTRY" class="form-control col-6 required"  id="NewUser_USER_COUNTRY">
                                                  <#if displayCountryList?has_content>
                                                  <#list displayCountryList as countryList>
                                                  <option value="${countryList.geoId}">${countryList.geoId}: ${countryList.geoName}</option>
                                                  </#list>
                                                  </#if>    
                                            </select>
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_ADDRESS_ALLOW_SOL" id="NewUser_USER_ADDRESS_ALLOW_SOL_title">Allow Address Solicitation?</span>
											 <select name="USER_ADDRESS_ALLOW_SOL" class="form-control col-3" id="NewUser_USER_ADDRESS_ALLOW_SOL" >
											 <option>&nbsp;</option>
											 <option value="Y">${uiLabelMap.CommonY}</option>
											 <option value="N">${uiLabelMap.CommonN}</option>  
											 
											 </select>  
										</div>
									</div>	
							</div>
						<div class="row">
							<div class="form-group">
							    <span for="NewUser_HomePhoneTitle" id="NewUser_HomePhoneTitle_title">Home phone</span> 
							    </div>
							</div>
						<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_HOME_COUNTRY" id="NewUser_USER_HOME_COUNTRY_title">Country Code</span>  
											<input type="text" class="form-control col-6" name="USER_HOME_COUNTRY" size="4" maxlength="10" id="NewUser_USER_HOME_COUNTRY" require="">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_HOME_AREA" id="NewUser_USER_HOME_AREA_title">Area Code</span> 
											<input type="text" class="form-control col-6" name="USER_HOME_AREA" size="4" maxlength="10" id="NewUser_USER_HOME_AREA" require="">  
										</div>
									</div>
								</div>	
						<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_HOME_CONTACT" id="NewUser_USER_HOME_CONTACT_title">Phone Number</span>   
											<input type="text" class="form-control col-6" name="USER_HOME_CONTACT" size="15" maxlength="15" id="NewUser_USER_HOME_CONTACT" require=""> 
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_HOME_EXT" id="NewUser_USER_HOME_EXT_title">ext</span>  
											<input type="text" class="form-control col-6" name="USER_HOME_EXT" size="6" maxlength="10" id="NewUser_USER_HOME_EXT" require="">   
										</div>
									</div>
								</div>	
						<div class="row">
									<div class="col">
										<div class="form-group">
										<span for="NewUser_USER_HOME_ALLOW_SOL" id="NewUser_USER_HOME_ALLOW_SOL_title">Allow Solicitation?</span> 
										<select name="USER_HOME_ALLOW_SOL" class="form-control col-3" id="NewUser_USER_HOME_ALLOW_SOL" >
      												  <option value="">&nbsp;</option>
         											 <option value="Y">Y</option>          
         											 <option value="N">N</option>     
         								 </select>	
         								 </div>
         								 </div>
         				</div>
         				<div class="row">
							<div class="form-group">
							    <span for="NewUser_WorkPhoneTitle" id="NewUser_WorkPhoneTitle_title">Work Phone Number</span> 
							    </div>
							</div>
						<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_WORK_COUNTRY" id="NewUser_USER_WORK_COUNTRY_title">Country Code</span>   
											<input type="text" class="form-control col-6"  name="USER_WORK_COUNTRY" size="4" maxlength="10" id="NewUser_USER_WORK_COUNTRY" require="">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_WORK_AREA" id="NewUser_USER_WORK_AREA_title">Area Code</span> 
											<input type="text" class="form-control col-6"  name="USER_WORK_AREA" size="4" maxlength="10" id="NewUser_USER_WORK_AREA" require="">    
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_WORK_CONTACT" id="NewUser_USER_WORK_CONTACT_title">Phone Number</span> 
											<input type="text" class="form-control col-6"  name="USER_WORK_CONTACT" size="15" maxlength="15" id="NewUser_USER_WORK_CONTACT" require="">    
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_WORK_EXT" id="NewUser_USER_WORK_EXT_title">ext</span>  </td>

											<input type="text" class="form-control col-6"  name="USER_WORK_EXT" size="6" maxlength="10" id="NewUser_USER_WORK_EXT" require="">  
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_WORK_ALLOW_SOL" id="NewUser_USER_WORK_ALLOW_SOL_title">Allow Solicitation?</span> 
											<select name="USER_WORK_ALLOW_SOL" class="form-control col-3"  id="NewUser_USER_WORK_ALLOW_SOL" >
      											  <option value="">&nbsp;</option>
        										  <option value="Y">Y</option>           
        										  <option value="N">N</option>     
        								  </select>  
										</div>
									</div>
								</div>							
							<div class="row">
							<div class="form-group">
							    <span for="NewUser_FaxPhoneTitle" id="NewUser_FaxPhoneTitle_title">Fax Number</span>
							    </div>
							</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_FAX_COUNTRY" id="NewUser_USER_FAX_COUNTRY_title">Country Code</span>  
											<input type="text" class="form-control col-6" name="USER_FAX_COUNTRY" size="4" maxlength="10" id="NewUser_USER_FAX_COUNTRY" require="">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_FAX_AREA" id="NewUser_USER_FAX_AREA_title">Area Code</span> 

											<input type="text" class="form-control col-6" name="USER_FAX_AREA" size="4" maxlength="10" id="NewUser_USER_FAX_AREA" require="">  
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_FAX_CONTACT" id="NewUser_USER_FAX_CONTACT_title">Phone Number</span>  
											<input type="text" class="form-control col-6" name="USER_FAX_CONTACT" size="15" maxlength="15" id="NewUser_USER_FAX_CONTACT" require="">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_FAX_EXT" id="NewUser_USER_FAX_EXT_title">ext</span> 

											<input type="text" class="form-control col-6" name="USER_FAX_EXT" size="6" maxlength="10" id="NewUser_USER_FAX_EXT" require="">    
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
										<span for="NewUser_USER_FAX_ALLOW_SOL" id="NewUser_USER_FAX_ALLOW_SOL_title">Allow Solicitation?</span> 
										 <select name="USER_FAX_ALLOW_SOL" class="form-control col-3" id="NewUser_USER_FAX_ALLOW_SOL" >
       											 <option value="">&nbsp;</option>
        										  <option value="Y">Y</option>          
        										  <option value="N">N</option>     
        										  </select>		
         								 	</div>
         								 	</div>
         						</div>
         					<div class="row">
							<div class="form-group">
							    <span for="NewUser_MobilePhoneTitle" id="NewUser_MobilePhoneTitle_title">Mobile Phone Number</span>
							    </div>
							</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_MOBILE_COUNTRY" id="NewUser_USER_MOBILE_COUNTRY_title">Country Code</span>
											<input type="text" class="form-control col-6" name="USER_MOBILE_COUNTRY" size="4" maxlength="10" id="NewUser_USER_MOBILE_COUNTRY" require="">  
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_MOBILE_AREA" id="NewUser_USER_MOBILE_AREA_title">Area Code</span> 

											<input type="text" class="form-control col-6" name="USER_MOBILE_AREA" size="4" maxlength="10" id="NewUser_USER_MOBILE_AREA" require="">     
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_MOBILE_CONTACT" id="NewUser_USER_MOBILE_CONTACT_title">Phone Number</span>
											<input type="text" class="form-control col-6" name="USER_MOBILE_CONTACT" size="15" maxlength="15" id="NewUser_USER_MOBILE_CONTACT" require="">   
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_MOBILE_ALLOW_SOL" id="NewUser_USER_MOBILE_ALLOW_SOL_title">Allow Solicitation?</span>   

											<select name="USER_MOBILE_ALLOW_SOL" class="form-control col-6" id="NewUser_USER_MOBILE_ALLOW_SOL" >
        										<option value="">&nbsp;</option>
          										<option value="Y">Y</option>           
          										<option value="N">N</option>     
          										</select>     
										</div>
									</div>
								</div>	
							<div class="row">
							<div class="form-group">
							   <span for="NewUser_EmailAddressTitle" id="NewUser_EmailAddressTitle_title">E-Mail Address</span>  
							    </div>
							</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_EMAIL" id="NewUser_USER_EMAIL_title">Email</span> 
											<input type="text" class="form-control col-6 required" name="USER_EMAIL"  size="60" maxlength="250" id="NewUser_USER_EMAIL" required="true"> 
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USER_EMAIL_ALLOW_SOL" id="NewUser_USER_EMAIL_ALLOW_SOL_title">Allow Solicitation?</span> 

											<select name="USER_EMAIL_ALLOW_SOL" class="form-control col-6" id="NewUser_USER_EMAIL_ALLOW_SOL" >
        												<option value="">&nbsp;</option>
         												 <option value="Y">Y</option>           
         												 <option value="N">N</option>     
         									</select>   
										</div>
									</div>
								</div>	
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_USERNAME" id="NewUser_USERNAME_title">User Name</span>
											<input type="text" class="form-control col-6 required" name="USERNAME" class="required" size="30" maxlength="250" id="NewUser_USERNAME" required="true"> 
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_PASSWORD" id="NewUser_PASSWORD_title">Password</span>  

											 <input type="password" class="form-control col-6 required" name="PASSWORD" size="15" maxlength="250" id="NewUser_PASSWORD" required="true">    
										</div>
									</div>
								</div>
							<div class="row">
									<div class="col">
										<div class="form-group">
											<span for="NewUser_CONFIRM_PASSWORD" id="NewUser_CONFIRM_PASSWORD_title">Password</span> 
											 <input type="password" class="form-control col-6 required"  name="CONFIRM_PASSWORD" size="15" maxlength="250" id="NewUser_CONFIRM_PASSWORD" required="true"> 
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<span for="NewUser_PRODUCT_STORE_ID" id="NewUser_PRODUCT_STORE_ID_title">Product Store</span>   

											 <select name="PRODUCT_STORE_ID" class="required  form-control col-6" id="NewUser_PRODUCT_STORE_ID" >
                     								<option value="9000">OFBiz E-Commerce Store (9000)</option>     
                     						</select>
										</div>
									</div>
								</div>	
							<div class="row">
									<div class="col-md-5"></div>
									<div class="col">
									<input type="submit" class="btn btn-info btn-xs" id="createEmployee_submitButton" name="submitButton" value="Save"></div>
								</div>					
								  		</form></div></div>  	
					
					
					</div>

							</div>
						</div>

					</div>
</body>
</html>
