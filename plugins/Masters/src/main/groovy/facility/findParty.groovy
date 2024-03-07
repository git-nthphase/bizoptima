Set<String> displayRoletypeIdList = ['roleTypeId','description']
def roleTypeIdList = delegator.findList('RoleType',null,displayRoletypeIdList,null,null,false)
context.roleTypeIdList = roleTypeIdList


//displaying dropdown for partyTypeId(Type)
Set<String> displayTypeIdList = ['partyTypeId','description']
def typeIdList = delegator.findList('PartyType',null,displayTypeIdList,null,null,false)
context.typeIdList = typeIdList



//displaying dropdown for Classification Group
Set<String> displayClassificationGroupList = ['typeDescription','partyClassificationGroupId']
def classificationGroupList = delegator.findList('PartyClassificationGroupAndType',null,displayClassificationGroupList,null,null,false)
context.classificationGroupList = classificationGroupList


//displayoing dropdown for country
def displayCountryList = from('Geo').where('geoTypeId',"COUNTRY").cache(true).queryList()
context. displayCountryList=displayCountryList

//displayoing dropdown for State

def displayStateList = from('Geo').where('geoTypeId',"STATE").cache(true).queryList()
context. displayStateList=displayStateList