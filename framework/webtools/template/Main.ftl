<section class="content">
   <div class="container-fluid">
      <div class="row">
         <div>
            <div class="card">
               <div class="card-header">
                  <h6 class="card-title">${uiLabelMap.WebtoolsCacheDebugTools}</h6>
               </div>
               <div class="card-body" style="display: block;">
                  <div><a href="<@ofbizUrl>FindUtilCache</@ofbizUrl>">${uiLabelMap.WebtoolsCacheMaintenance}</a></div>
                  <div><a href="<@ofbizUrl>LogConfiguration</@ofbizUrl>">${uiLabelMap.WebtoolsAdjustDebuggingLevels}</a></div>
                  <div><a href="<@ofbizUrl>LogView</@ofbizUrl>">${uiLabelMap.WebtoolsViewLog}</a></div>
                  <div><a href="<@ofbizUrl>ViewComponents</@ofbizUrl>">${uiLabelMap.WebtoolsViewComponents}</a></div>
               </div>
            </div>
         </div>
         <div>
            <div class="card">
               <div class="card-header">
                  <h6 class="card-title">${uiLabelMap.WebtoolsGeneralArtifactInfoTools}</h6>
               </div>
               <div class="card-body" style="display: block;">
                  <#if security.hasPermission("ARTIFACT_INFO_VIEW", session)>
                  <div><a href="<@ofbizUrl>ViewComponents</@ofbizUrl>" target="_blank">${uiLabelMap.WebtoolsArtifactInfo}</a></div>
                  <div><a href="<@ofbizUrl>entityref</@ofbizUrl>" target="_blank">${uiLabelMap.WebtoolsEntityReference} - ${uiLabelMap.WebtoolsEntityReferenceInteractiveVersion}</a></div>
                  <div><a href="<@ofbizUrl>Servicedivst</@ofbizUrl>">${uiLabelMap.WebtoolsServiceReference}</a></div>
                  </#if>
                  <#if security.hasPermission("LABEL_MANAGER_VIEW", session)>
                  <div><a href="<@ofbizUrl>SearchLabels</@ofbizUrl>">${uiLabelMap.WebtoolsLabelManager}</a></div>
                  </#if>
               </div>
            </div>
         </div>


         <div>
            <div class="card">
               <div class="card-header">
                  <h6 class="card-title">${uiLabelMap.WebtoolsEntityXMLTools}</h6>
               </div>
               <div class="card-body" style="display: block;">
                  <div><a href="<@ofbizUrl>xmldsdump</@ofbizUrl>">${uiLabelMap.PageTitleEntityExport}</a></div>
                  <div><a href="<@ofbizUrl>EntityExportAll</@ofbizUrl>">${uiLabelMap.PageTitleEntityExportAll}</a></div>
                  <div><a href="<@ofbizUrl>EntityImport</@ofbizUrl>">${uiLabelMap.PageTitleEntityImport}</a></div>
                  <div><a href="<@ofbizUrl>EntityImportDir</@ofbizUrl>">${uiLabelMap.PageTitleEntityImportDir}</a></div>
                  <div><a href="<@ofbizUrl>EntityImportReaders</@ofbizUrl>">${uiLabelMap.PageTitleEntityImportReaders}</a></div>
               </div>
            </div>
         </div>
         <div>
            <div class="card">
               <div class="card-header">
                  <h6 class="card-title">${uiLabelMap.WebtoolsServiceEngineTools}</h6>
               </div>
               <div class="card-body" style="display: block;">
                  <#if security.hasPermission("SERVICE_MAINT", session)>
                  <div><a href="<@ofbizUrl>ServiceList</@ofbizUrl>">${uiLabelMap.WebtoolsServiceReference}</a></div>
                  <div><a href="<@ofbizUrl>scheduleJob</@ofbizUrl>">${uiLabelMap.PageTitleScheduleJob}</a></div>
                  <div><a href="<@ofbizUrl>runService</@ofbizUrl>">${uiLabelMap.PageTitleRunService}</a></div>
                  <div><a href="<@ofbizUrl>FindJob</@ofbizUrl>">${uiLabelMap.PageTitleJobList}</a></div>
                  <div><a href="<@ofbizUrl>threadList</@ofbizUrl>">${uiLabelMap.PageTitleThreadList}</a></div>
                  <div><a href="<@ofbizUrl>FindJobManagerLock</@ofbizUrl>">${uiLabelMap.PageTitleJobManagerLockList}</a></div>
                  <div><a href="<@ofbizUrl>ServiceLog</@ofbizUrl>">${uiLabelMap.WebtoolsServiceLog}</a></div>
                  </#if>
               </div>
            </div>
         </div>
         <div>
            <div class="card">
               <div class="card-header">
                  <h6 class="card-title">${uiLabelMap.WebtoolsDataFileTools}</h6>
               </div>
               <div class="card-body" style="display: block;">
                  <div><a href="<@ofbizUrl>viewdatafile</@ofbizUrl>">${uiLabelMap.WebtoolsWorkWithDataFiles}</a></div>
                  <div><a href="<@ofbizUrl>FindGeo</@ofbizUrl>">${uiLabelMap.WebtoolsGeoManagement}</a></div>
                  <div><a href="<@ofbizUrl>WebtoolsLayoutDemo</@ofbizUrl>">${uiLabelMap.WebtoolsLayoutDemo}</a></div>
                  <div><a href="<@ofbizUrl>EditEnumerationTypes</@ofbizUrl>">Edit Enumerations</a></div>
                  <div><a href="<@ofbizUrl>EditStatusTypes</@ofbizUrl>">Edit Status Options</a></div>
               </div>
            </div>
         </div>
         <div>
            <div class="card">
               <div class="card-header">
                  <h6 class="card-title">${uiLabelMap.WebtoolsPerformanceTests}</h6>
               </div>
               <div class="card-body" style="display: block;">
                  <div><a href="<@ofbizUrl>EntityPerformanceTest</@ofbizUrl>">${uiLabelMap.WebtoolsEntityEngine}</a></div>
             
                  <div><a href="<@ofbizUrl>StatsSinceStart</@ofbizUrl>">${uiLabelMap.WebtoolsStatsSinceServerStart}</a></div>
            
                  <div><a href="<@ofbizUrl>myCertificates</@ofbizUrl>">${uiLabelMap.WebtoolsMyCertificates}</a></div>
               </div>
            </div>
            
         </div>
                  <div>
            <div class="card">
               <div class="card-header">
                  <h6 class="card-title">${uiLabelMap.WebtoolsEntityEngineTools}</h6>
               </div>
               <div class="card-body" style="display: block;">
                  <#if security.hasPermission("ENTITY_MAINT", session)>
                  <div><a href="<@ofbizUrl>entitymaint</@ofbizUrl>">${uiLabelMap.WebtoolsEntityDataMaintenance}</a></div>
                  <div><a href="<@ofbizUrl>entityref</@ofbizUrl>" target="_blank">${uiLabelMap.WebtoolsEntityReference} - ${uiLabelMap.WebtoolsEntityReferenceInteractiveVersion}</a></div>
                  <div><a href="<@ofbizUrl>entityref?forstatic=true</@ofbizUrl>" target="_blank">${uiLabelMap.WebtoolsEntityReference} - ${uiLabelMap.WebtoolsEntityReferenceStaticVersion}</a></div>
                  <div><a href="<@ofbizUrl>entityrefReport</@ofbizUrl>" target="_blank">${uiLabelMap.WebtoolsEntityReferencePdf}</a></div>
                  <div><a href="<@ofbizUrl>EntitySQLProcessor</@ofbizUrl>">${uiLabelMap.PageTitleEntitySQLProcessor}</a></div>
                  <div><a href="<@ofbizUrl>EntitySyncStatus</@ofbizUrl>">${uiLabelMap.WebtoolsEntitySyncStatus}</a></div>
                  <div><a href="<@ofbizUrl>ModedivnduceFromDb</@ofbizUrl>" target="_blank">${uiLabelMap.WebtoolsInduceModelXMLFromDatabase}</a></div>
                  <div><a href="<@ofbizUrl>EntityEoModelBundle</@ofbizUrl>">${uiLabelMap.WebtoolsExportEntityEoModelBundle}</a></div>
                  <div><a href="<@ofbizUrl>view/checkdb</@ofbizUrl>">${uiLabelMap.WebtoolsCheckUpdateDatabase}</a></div>
                  <div><a href="<@ofbizUrl>ConnectionPoolStatus</@ofbizUrl>">${uiLabelMap.ConnectionPoolStatus}</a></div>
                  <#-- want to leave these out because they are only working so-so, and cause people more problems that they solve, IMHO
                  <div><a href="<@ofbizUrl>view/EditEntity</@ofbizUrl>"  target="_blank">Edit Entity Definitions</a></div>
                  <div><a href="<@ofbizUrl>ModelWriter</@ofbizUrl>" target="_blank">Generate Entity Model XML (all in one)</a></div>
                  <div><a href="<@ofbizUrl>ModelWriter?savetofile=true</@ofbizUrl>" target="_blank">Save Entity Model XML to Files</a></div>
                  -->
                  <#-- not working right now anyway
                  <div><a href="<@ofbizUrl>ModelGroupWriter</@ofbizUrl>" target="_blank">Generate Entity Group XML</a></div>
                  <div><a href="<@ofbizUrl>ModelGroupWriter?savetofile=true</@ofbizUrl>" target="_blank">Save Entity Group XML to File</a></div>
                  -->
                  <#--
                  <div><a href="<@ofbizUrl>view/tablesMySql</@ofbizUrl>">MySQL Table Creation SQL</a></div>
                  <div><a href="<@ofbizUrl>view/dataMySql</@ofbizUrl>">MySQL Auto Data SQL</a></div>
                  -->
                  </#if>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>