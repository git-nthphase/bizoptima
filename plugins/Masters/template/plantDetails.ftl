<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Plant</title>
<script type="text/javascript">
	$(function() {
		var today = new Date();
		$("#effectiveDate")
				.datepicker(
						{
							dateFormat : "dd-mm-yy",
							altField : "#datepicker-1",
							changeMonth : true,
							changeYear : true,
							showButtonPanel : true, // Show button panel with clear option
							onClose : function(dateText, inst) {
								if ($(window.event.srcElement).hasClass(
										'ui-datepicker-close')) {
									document
											.getElementById('estimatedShipDate').value = '';
								}
							}
						});
	});
</script>
</head>
<body class="hold-transition sidebar-mini">
	<!-- Main content -->

	<#assign conValue="Create Plant" />
	<h1>${headerItem?if_exists}</h1>
	<#if headerItem?has_content && headerItem==conValue>
	<div class="card card-primary">
		<div class="card-body">
			<div class="card">
				<form action="<@ofbizUrl>createNewPlant</@ofbizUrl>" method="post">
					<input type="hidden" name="facilityType" value="PLANT" /> <input type="hidden" name="ownerPartyId" value="Company" />
					<div class="row">
						<div class="col">
							<div class="form-group">
								<span>Plant Id</span> <input type="text" class="form-control col-3" name="facilityId" id="facilityId" required="true">

							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="form-group">
								<span>Plant Name</span> <input type="text" class="form-control col-3" name="facilityName" id="facilityName" required="true">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="form-group">
								<span>Effective Date</span> <input type="text" class="form-control col-3" name="effectiveDate" id="effectiveDate" required="true" readonly="true">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="form-group">
								<div class="col-md-3">
									<input type="submit" class="btn btn-info btn-xs" id="createPlant" name="createPlant" value="Create">
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<#else>
	<div class="card card-primary">
		<div class="card-body">
			<div class="card">
				<form action="<@ofbizUrl>findPlant</@ofbizUrl>" method="post">
					<input type="hidden" name="facilityType" value="PLANT" /> <input type="hidden" name="ownerPartyId" value="Company" />
					<div class="row">
						<div class="col">
							<div class="form-group">
								<span>Plant Id</span> <input type="text" class="form-control col-3" name="facilityId" id="facilityId">

							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="form-group">
								<span>Plant Name</span> <input type="text" class="form-control col-3" name="facilityName" id="facilityName">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="form-group">
								<div class="col-md-3">
									<input type="submit" class="btn btn-info btn-xs" id="findPlant" name="findPlant" value="Find">
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="card card-primary">
		<div class="card-body">
			<div class="card-body">
				<#if facilityResult?has_content> 
				
				
				<#else>
				<h6>No Results found</h6></#if>
			</div>
		</div>
	</div></#if>


</body>
</html>
