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
						  <a href="entitymaint" class="btn btn-outline-info btn-xs">${uiLabelMap.WebtoolsBackToEntityList}</a>
                                    <a href="entity/relations/${entityName}?entityName=${entityName}" class="btn btn-outline-info btn-xs">${uiLabelMap.WebtoolsViewRelations}</a>
                                    <a href="entity/create/${entityName}?entityName=${entityName}" style="create" class="btn btn-outline-info btn-xs">${uiLabelMap.CommonCreate}</a>
						<form method="post" action="<@ofbizUrl>FindGeneric?entityName=${entityName}</@ofbizUrl>">
						<input type="hidden" name="find" value="true"/>
							<table id="findGeneric"	class="table table-bordered">
								<thead>
									<tr>
										<th>${uiLabelMap.WebtoolsFieldName}</th>
										<th>${uiLabelMap.WebtoolsPk}</th>
										<th>${uiLabelMap.WebtoolsFieldType}</th>
									</tr>
								</thead>
								<tbody>
									<#list fieldList as field>
									<tr>
										<td>${field.name}</td>
										<td><#if field.isPk=='Y'>*</#if></td>
										<td>${field.javaType},&nbsp;${field.sqlType}</td>
										<td><input type="text" name="${field.name}"
											value="${field.param}" size="40" /></td>
									</tr>
									</#list>
									<tr>
										<td colspan="3">${uiLabelMap.WebtoolsToFindAll}
												${entityName}, ${uiLabelMap.WebtoolsLeaveAllEntriesBlank}</td>
										<td><input type="submit" value="${uiLabelMap.CommonFind}" /></td>
									</tr>
								</tbody>
							</table>
							</form>
						</div>
					</div>
				</div>
			</div>
	<script>
    $(document).ready(function() {
      $('#example').DataTable({
      });
    });
  </script>
</body>
</html>
