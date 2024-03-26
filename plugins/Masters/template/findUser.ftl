<div class="card card-default" data-select2-id="29">
	<div class="card-header">
		<h3 class="card-title">Find User</h3>
		<div class="card-tools">
			<button type="button" class="btn btn-tool" data-card-widget="collapse">
				<i class="fas fa-minus"></i>
			</button>
		</div>
	</div>
	<div class="card-body">
		<form method="post" action="/Masters/control/findUser" id="LookupParty" data-focus-field="partyId" class="basic-form" onsubmit="javascript:submitFormDisableSubmits(this)" name="LookupParty">
			<input type="hidden" name="statusId" value="PARTY_ENABLED" id="LookupParty_statusId"> <input type="hidden" name="noConditionFind" value="Y" id="LookupParty_noConditionFind"> <input
				type="hidden" name="hideFields" value="Y" id="LookupParty_hideFields">
			<div class="row">
				<div class="col">
					<div class="form-group">
						<span for="LookupParty_partyId" id="LookupParty_partyId_title">Party ID</span> <input type="text" class="form-control col-3" name="partyId" id="LookupParty_partyId" require="">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-group">
						<span for="LookupParty_userLoginId" id="LookupParty_userLoginId_title">User Login ID</span> <input type="text" class="form-control col-6" name="userLoginId" id="LookupParty_userLoginId">

					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<span for="LookupParty_externalId" id="LookupParty_externalId_title">External ID</span> <input type="text" class="form-control col-6" name="externalId" id="LookupParty_externalId" require="">

					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-group">
						<span for="LookupParty_lastName" id="LookupParty_lastName_title">Last Name</span> <input type="text" class="form-control col-6" name="lastName" id="LookupParty_lastName" require="">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<span for="LookupParty_firstName" id="LookupParty_firstName_title">First Name</span> <input type="text" name="firstName" class="form-control col-6" id="LookupParty_firstName" require="">

					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-group">
						<span for="LookupParty_groupName" id="LookupParty_groupName_title">Group Name</span> <input type="text" class="form-control col-6" name="groupName" id="LookupParty_groupName" require="">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<span for="LookupParty_roleTypeId" id="LookupParty_roleTypeId_title">Role Type ID</span> <select name="roleTypeId" class="form-control col-6" id="LookupParty_roleTypeId">
							<option value="">&nbsp;</option>
							<#if roleTypeIdList?has_content> <#list roleTypeIdList as displayRoleTypeId>
							<option value="${displayRoleTypeId.roleTypeId}">${displayRoleTypeId.description}</option>
							</#list> </#if>

						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-group">
						<span for="LookupParty_partyTypeId" id="LookupParty_partyTypeId_title">Type</span> <select class="form-control col-6" name="partyTypeId" id="LookupParty_partyTypeId">
							<option value="">&nbsp;</option>
							<#if typeIdList?has_content> <#list typeIdList as displayTypeId>
							<option value="${displayTypeId.partyTypeId}">${displayTypeId.description}</option>
							</#list> </#if>
						</select>

					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<span for="LookupParty_partyClassificationGroupId" id="LookupParty_partyClassificationGroupId_title">Classification Group</span> <select multiple="" class="form-control col-6">
							<#if classificationGroupList?has_content> <#list classificationGroupList as displayClassificationGroup>
							<option value="${displayClassificationGroup.partyClassificationGroupId}">${displayClassificationGroup.typeDescription}-${displayClassificationGroup.partyClassificationGroupId}</option>
							</#list> </#if>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-5"></div>
				<div class="col-md-3">
					<input type="submit" class="btn btn-info btn-xs" id="LookupParty_searchButton" name="searchButton" value="Search">
				</div>
			</div>
		</form>
	</div>
</div>