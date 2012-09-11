<%@ include file="/WEB-INF/template/include.jsp" %>

 <openmrs:hasPrivilege privilege="View Patients">
<openmrs:htmlInclude file="/moduleResources/radiologyOrders/js/jquery-1.4.2.js" />
<openmrs:htmlInclude file="/moduleResources/radiologyOrders/js/jquery.dataTables.js" />
<openmrs:htmlInclude file="/moduleResources/radiologyOrders/css/dataTables.css" />
<openmrs:htmlInclude file="/moduleResources/radiologyOrders/js/jquery-ui-1.8.21.custom.min.js" />
<openmrs:htmlInclude file="/moduleResources/radiologyOrders/css/smoothness/jquery-ui-1.8.16.custom.css" />

<openmrs:htmlInclude file="/dwr/interface/DWRRadiologyOrdersService.js"/>

<script type="text/javascript">
DWRRadiologyOrdersService.getAllLocations(objectsFound);
 
function objectsFound(locations) {
  alert("There are " + locations + " locations here ");
}
 
</script>

<p>trying this loc stuff</p>

 </openmrs:hasPrivilege> 
<%@ include file="/WEB-INF/template/footer.jsp" %>