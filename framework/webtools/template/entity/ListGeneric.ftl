<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Find Generic</title>
</head>
<body class="hold-transition sidebar-mini">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-body">
							<form method="post"
								action="<@ofbizUrl>FindGeneric?entityName=${entityName}</@ofbizUrl>">
								<input type="hidden" name="find" value="true" />
								<table id="listGeneric"	class="table table-bordered">
									<thead>
										<tr>
											<td>&nbsp;</td>
											<#list fieldList as field>
											<th>${field.name}</th>
											</#list>
										</tr>
									</thead>
									<tbody>
									<#if resultPartialList?has_content> 
									   <#assign alt_row=false> 
									   <#list records as record>
										<tr <#if alt_row> class="alternate-row"</#if>>
											<td class="button-col"><a
												href='<@ofbizUrl>ViewGeneric?${record.findString}</@ofbizUrl>'>${uiLabelMap.CommonView}</a>
												<#if hasDeletePermission=='Y'> <a
													href='<@ofbizUrl>UpdateGeneric?${record.findString}&amp;UPDATE_MODE=DELETE</@ofbizUrl>'>${uiLabelMap.CommonDelete}</a>
												</#if></td>
											<#list fieldList as field>
											<td>${record.fields.get(field.name)?if_exists?string}</td>
											</#list>
										</tr>
										<#assign alt_row=!alt_row>
										</#list> 
									 <#else>
										<tr>
											<td colspan="${columnCount}">
												${uiLabelMap.WebtoolsNoEntityRecordsFound}
													${entityName}.
											</td>
										</tr>
									</#if>
									</tbody>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>
	<script>
    $(document).ready(function() {
      $('#listGeneric').DataTable({
        "paging": true // Enable pagination
      });
    });
  </script>
</body>
</html>
