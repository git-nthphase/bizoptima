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
							<ul class="nav nav-tabs" id="custom-tabs-three-tab"
								role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="findFacility-tab" data-toggle="pill"
									href="#findFacility" role="tab"
									aria-controls="findFacility" aria-selected="true">
										Find Facility</a></li>
								<li class="nav-item"><a class="nav-link"
									id="createFacility-tab" data-toggle="pill"
									href="#createFacility" role="tab"
									aria-controls="CreateFacility" aria-selected="false">
										Create Facility </a></li>

							</ul>
						</div>
						<div class="card-body">
							<div class="tab-content" id="custom-tabs-three-tabContent">
								<div class="tab-pane fade show active"
									id="findFacility" role="tabpanel"
									aria-labelledby="findFacility-tab">Content for
									Tab 1
									<#if dummy?has_content>
										${dummy?if_exists}
									</#if>
									
									</div>
								<div class="tab-pane fade" id="createFacility"
									role="tabpanel" aria-labelledby="createFacility-tab">
									Content for Tab 2</div>

							</div>
						</div>

					</div>
</body>
</html>
