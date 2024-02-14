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


<#if (requestAttributes.externalLoginKey)?exists><#assign externalKeyParam = "?externalLoginKey=" + requestAttributes.externalLoginKey?if_exists></#if>
<#if (externalLoginKey)?exists><#assign externalKeyParam = "?externalLoginKey=" + requestAttributes.externalLoginKey?if_exists></#if>
<#assign ofbizServerName = application.getAttribute("_serverId")?default("default-server")>
<#assign contextPath = request.getContextPath()>
<#assign displayApps = Static["org.apache.ofbiz.webapp.control.LoginWorker"].getAppBarWebInfos(security, userLogin, ofbizServerName, "main")>
<!--
<#if userLogin?has_content>
<center>
  <div id="secondary-navigation">
    <#list displayApps as display>
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
        </#if><h1></h1>
        <a<#if selected> class="selected"</#if> href="${thisURL}${externalKeyParam}" <#if uiLabelMap?exists> title="${uiLabelMap[display.description]}">${uiLabelMap[display.title]}<#else> title="${display.description}"> ${display.title}</#if></a>
      </#if>
    </#list>
  </div>
</center>
</#if>
-->
<div id="footer">
  <!--<a href="http://www.nthphase.com" id="footerLink"></a>-->
  <!--<p>${nowTimestamp?datetime?string("dd/MM/yyyy HH:mm")} -->
  <!--<a href="<@ofbizUrl>ListTimezones</@ofbizUrl>">${timeZone.getDisplayName(timeZone.useDaylightTime(), Static["java.util.TimeZone"].LONG, locale)}</a>-->
  </p>

	

</div>
  <link rel="stylesheet" href="<@ofbizContentUrl>/images/jquery/plugins/sidr/stylesheets/jquery.sidr.light.css</@ofbizContentUrl>" type="text/css"/>
<script language="javascript" type="text/javascript" src="<@ofbizContentUrl>/images/jquery/plugins/sidr/jquery.sidr.js</@ofbizContentUrl>"></script>

</body>
<script language="javascript" type="text/javascript">
 
 // Little jugglery to add selected class to all ancestors of the most nested selectd li
 var selectedLeaf = $('#app-navigation li.selected:not(:has("ul"))');
 selectedLeaf.parentsUntil("#app-navigation", "li:has(> a)").addClass('selected');
 
 var html = '<ul>';
 var module = $('#sidr ul li.selected');
 html += '<li>' + module.html() + '</li>';
$('#app-navigation').find('li.selected').each(function() {
   html += '<li>' + $($(this).children()).html().replace('\u25BE','') + ' </li>';
});

html += '</ul>';


//CSRF issue fix  
var myFixtionId="${sessionAttributes.FIXIATIONID?if_exists}";
$("form").each(function() {
        var formName=$('form[name="' +this.name+'"]');
        
        var myFormTargetVal="";
        var myFormTargetVal=this.target;
        //var myFormActionVal=this.action;
          if(this.target){
           myFormTargetVal=this.target;
          }
          //Ignore appending paramters for target blank
          if(myFormTargetVal!=="_blank"){
              var inputFixitiationId = jQuery("<input>").attr("type", "hidden").attr("name", "_myFixiationId").val(myFixtionId);
		      jQuery(formName).append(jQuery(inputFixitiationId));
          }	
});
//alert("===myFixtionId=="+myFixtionId);

$('INPUT[type="file"]').change(function () {
    if(this.value){
	    var ext = this.value.match(/\.(.+)$/)[1];
	    switch (ext) {
	        case 'jpg':
	        case 'jpeg':
	        case 'png':
	        case 'gif':
	        case 'pdf':
	        case 'doc':
	        case 'docx':
	        case 'xls':
	        case 'xlsx':
	        case 'csv':
	        case 'zip':
	        case 'json':
	        case 'dbf':
	        case 'DBF':
	            break;
	        default:
	            alert('This is not an allowed file types,Only "jpeg","png","gif","pdf","ms-word","excel","csv" Allowed');
	            this.value = '';
	    }
	     //Checking file size before upload
	     var fSExt = new Array('Bytes', 'KB', 'MB', 'GB');
	     var fSize = this.files[0].size;
	     i=0;while(fSize>900){fSize/=1024;i++;}
	     var fileSizeMB=(Math.round(fSize*100)/100);
	    // alert((Math.round(fSize*100)/100)+' '+fSExt[i]);
	     if(fSExt[i]==="MB" && fileSizeMB>2.1 && "zip"!==ext ){
	      alert("Can Not Upload File More Than 2 MB");
	      this.value = '';
	     }
    }
});
   
 $('#app-navigation').after('<div class="row breadcontent" style="margin-bottom:30px"><div class="col-sm-6"><div id="bread"></div></div></div>');
 $('#bread').append(html);
 
 function submitConfirmation(){
 var retVal = confirm("Are You Sure You want to continue ?");
               if(retVal == true ){
                  return true;
               }
               else{
                  return false;
               }
 }
 function NoDecimalNumb(input){
	 var value1= /[0-9][0-9]*$/;
	 if(value1.test(input.value)==false){
		// input.value = input.value.substring(0,input.value.length - 1);
		 input.value=input.value.replace(/[^0-9]/gi,'');
		 }
 }
 function numberValidation(num){
             var value1= /^[0-9]+\.?[0-9]*$/;
             if(value1.test(num.value)==false){
   				//num.value = num.value.substring(0,num.value.length - 1);
				num.value=num.value.replace(/[^0-9]/gi,'');
  			}
             }
			 function AlphaNumeric(input){
				 var value1= /[a-zA-Z0-9][0-9a-zA-Z]*$/;
				 if(value1.test(input.value)==false){
					// input.value = input.value.substring(0,input.value.length - 1);
					 input.value=input.value.replace(/[^0-9a-zA-Z_]/gi,'');
					 }
			 }
 function mobileNumberValidation(mobileNumber){
      		var mobileNum = $(mobileNumber).val();
       		var reg=/^[0-9]*$/;
	     if (reg.test(mobileNum) == false){
	        	 alert('Invalid Mobile Number');
	         	//$("#mobileNumber").val('');
	         	mobileNumber.value='';
	         	return false;
	     	}
	     	if(mobileNum.length!=10){
	  	 		alert("Please Enter 10 digit mobile no");
	  	  		mobileNumber.value='';
	  	 		return false;
	    	}
	  }
	  function intValidator(value ,item) {
		var reg=/^[0-9]*$/;
	     if (reg.test(value) == false){
	         alert('Invalid Number');
	         return false;
	     	}
	     	return {valid: true, msg: null};
    }
	function posNumberValidation(posNumber){
          // var posNumber = $("#posNumber").val();
          var reg=/^[0-9]*$/;
	     if (reg.test(posNumber.value) == false){
	         alert('Invalid PosNumber');
	         $("#posNumber").val('');
	         return false;
	     	}
	     if(posNumber.value.length!=4){
	  	 alert("Please Enter last  4 digits only");
	  	  $("#posNumber").val('');
	  	 return false;
	    }
  }
  function ChequeNoValidation(paymentRefNum){
		$(paymentRefNum).keypress(function (e) {
		 var regex = new RegExp("^[0-9]+$");
    		var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
   			 if (regex.test(str)) {
        		return true;
    		}
    		e.preventDefault();
    		alert("Allows Numbers Only !");
   			 return false;
	 	});
	}
 /*function amountValidation(amount){
          var reg=/^[0-9]*$/;   
     	if (reg.test(amount) == false){
         	alert('Invalid Value');
        	 amount.value='';
        	 return false;
     	}
  }*/
  function amountValidation(amount) {
			 var numDecimal= /^[0-9]+\.?[0-9]*$/;
             if(numDecimal.test(amount.value)==false){
   				alert("Invalid Amount");
   				amount.value="";
   				return false;
   				amount.focus();
  			}
			
      return {valid: true, msg: null};
    }
  
  
  
    function chqNoValidator(chqNo) {
		var reg=/^[0-9]*$/;
	     if (reg.test(chqNo.value) == false){
	         alert('Invalid Number');
	            chqNo.value="";
   				return false;
   				chqNo.focus();
	     	}if(chqNo.value.length>6){
				 alert('Max 6 Digits Only!');
				 chqNo.value ='';
				 return false;
				 chqNo.focus();
			 }
	     	return {valid: true, msg: null};
    }
  function ValidateAlphabets(paymentBranch){
        var inputValue=$(paymentBranch).val();
		$(paymentBranch).keypress(function (e) {
		 	var regex = new RegExp("^[a-zA-Z]+$");
    		var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
   			 if (regex.test(str)) {
        		return true;
    		}
    		e.preventDefault();
    		alert("Allows Alphabets Only !");
   			 return false;
		});
	}
	function validateFromDateTodate(){
		 	var fromDate = $("#fromDate").val();
		 	var thruDate = $("#thruDate").val();
		 	
			var fromDay=fromDate.substring(0,2);
			var fromMonth=fromDate.substring(3,5);
			var fromYear=fromDate.substring(6,10);
	
			var toDay=thruDate.substring(0,2);
			var toMonth=thruDate.substring(3,5);
			var toYear=thruDate.substring(6,10);
	
			var validFromDate=new Date(fromYear, fromMonth-1 , fromDay);
			var validToDate=new Date(toYear, toMonth-1 , toDay);

			if(validFromDate > validToDate){
				alert("To date should be greater than or equals From date");
				$("#thruDate").val('');
			  }
		 } 
	


  function alphaNumericValidator(alphanum){
		 	var regex = /^[a-zA-Z0-9_]*$/;
   			 if (regex.test(alphanum.value)==false) {
    		  	alphanum.value = alphanum.value.substring(0,alphanum.value.length - 1);
    		  	}
	}

function datepickVal(){
		$("#fromDate").datepicker({
			dateFormat:'dd/mm/yy',
			//altField: '#fromDate',
			//altFormat: 'yy-mm-dd',
			changeMonth: true,
			numberOfMonths: 1,
			onSelect: function(selectedDate) {
				$("#thruDate").datepicker( "option", "minDate", selectedDate );
			}
		});
		$("#thruDate").datepicker({
			dateFormat:'dd/mm/yy',
			//altField: '#thruDate',
			//altFormat: 'yy-mm-dd',
			changeMonth: true,
			numberOfMonths: 1,
		});
		$('#ui-datepicker-div').css('clip', 'auto');
	}
	
	$(document).ready(function(){
		datepickVal();
	});


 </script>
</html>

