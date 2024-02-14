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

<div id="commonAppBarDiv" >
<span id="commonAppBarSpan"></span>
<a id="simple-menu2" class="sub-menu-button" href="#sidr2">Toggle menu</a>
</div>


<script type="text/javascript">
jQuery("#sidr2").hide()
$("#simple-menu2").hide();

    jQuery(document).ready(function ($) {
      $('#simple-menu2').sidr({
        name: 'sidr2',
        side: 'right',      
        timing: 'ease-in-out',
        speed: 500
      });

      $("#sidr2").show();
      
      var menuCount = $("#sidr2 ul li ul li").length;
	  if (menuCount > 1) {
		  $("#simple-menu2").show();
	  }
      
var html = '<ul>';
var module = $('#sidr ul li.selected').text();
html += '<li><a href="#">Home</a> </li>';
html += '<li><a href="#">'+ module + '</a> </li>';
$('#content-main-section div.tab-bar ul li ul li.selected').each(function() {
html += '<li>' + $(this).html() + ' </li>';

});

html += '</ul>';

//$('#bread').html("555");
      
    });

    jQuery( window ).resize(function ($) {
      $.sidr('close', 'sidr2');
    });
    
    $.datepicker.setDefaults({ 
    	changeYear: true, 
    	changeMonth: true,     	
    	yearRange: "c-10:c+1",
    	showOn: "both",
  	buttonImageOnly: true,
  	buttonImage: "/nthphase/images/cal_rspace.png",
  	buttonText: "Calendar"
    });
</script>

<script type="text/javascript">
 var mainmenu = new DropDownMenu(jQuery('#main-navigation'));
  var appmenu = new DropDownMenu(jQuery('#app-navigation'));
 jQuery("#sidr2").hide()
 $("#simple-menu2").hide();
 
    jQuery(document).ready(function ($) {
      $('#simple-menu2').sidr({
        name: 'sidr2',
        side: 'right',      
        timing: 'ease-in-out',
        speed: 500
      });
 
      $("#sidr2").show();
      
      var menuCount = $("#sidr2 ul li ul li").length;
 	  if (menuCount > 1) {
 		  $("#simple-menu2").show();
 	  }
      
    });
 
    jQuery( window ).resize(function ($) {
      $.sidr('close', 'sidr2');
    });
    
 </script>

