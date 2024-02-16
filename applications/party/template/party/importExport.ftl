<div>
   <h6>${uiLabelMap.PartyParty} ${uiLabelMap.CommonImportExport} ID Name, single role (employee, customer, supplier) and contactmechs</h6>
</div>
<div class="container-fluid">
   <div class="row">
      <div class="col-12">
         <div class="card">
            <div class="card-header">
               <h3 class="card-title">Import</h3>
               <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                  </button>
               </div>
            </div>
            <div class="card-body" style="display: block;">
               <form method="post" action="<@ofbizUrl>uploadParty</@ofbizUrl>" enctype="multipart/form-data" style="margin: 0;">
                  <input type="file" size="40" name="uploadedFile" />
                  <input type="submit" value="${uiLabelMap.CommonUpload}" />
               </form>
            </div>
         </div>
      </div>
   </div>
</div>
</div>
<div class="container-fluid">
   <div class="row">
      <div class="col-12">
         <div class="card">
            <div class="card-header">
               <h3 class="card-title">Export</h3>
               <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                  </button>
               </div>
            </div>
            <div class="card-body" style="display: block;">
               <form method="post" action="<@ofbizUrl>ExportPartyCsv.csv</@ofbizUrl>">
                  <div class="form-group">
                     <label for="partyId">${uiLabelMap.PartyPartyId}</label>
                     <div>
                     <@htmlTemplate.lookupField value="${surveyPartyId!(userLogin.partyId!)}" 
                     formName="EditSurveyResponseForm" name="partyId" id="partyId" fieldFormName="LookupPartyName"/>
                     </div>
                     <input type="submit" value="${uiLabelMap.CommonUpload}" />
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>
</div>