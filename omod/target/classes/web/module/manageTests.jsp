<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>

<%@ include file="template/localHeader.jsp"%>

<openmrs:htmlInclude file="/moduleResources/radiologyOrders/js/jquery-1.4.2.js" />
<openmrs:htmlInclude file="/moduleResources/radiologyOrders/js/jquery.dataTables.js" />
<openmrs:htmlInclude file="/moduleResources/radiologyOrders/css/dataTables.css" />
<openmrs:htmlInclude file="/moduleResources/radiologyOrders/js/jquery.searchdialog.js" />
<openmrs:htmlInclude file="/moduleResources/radiologyOrders/css/jquerysearchdialog.css" />
<script src="<openmrs:contextPath/>/dwr/interface/DWRConceptService.js"></script>
<script type="text/javascript">
$j = jQuery.noConflict();
$j(document).ready(function() {
    $j('#conceptSearchButton').jquerysearchdialog(function(searchTerm, callback){
        DWRConceptService.findConcepts(searchTerm, false, null, null, null, null, false,  objectsFound);
        function objectsFound(concepts) {
            // create string[][] from concepts
            if (typeof(concepts[0]) == "string" ) {
                callback([]);
                return;
            }
            var allData = new Array();
            for (x = 0; x < concepts.length; x++) {
                var row = new Array();
                row[0] = concepts[x].conceptId.toString();
                row [1] = concepts[x].name; 
                allData[x] = row;
            }
            callback(allData);
        }
    }, 
        function(selectedRow) { // on success
        $j("#foo").val(selectedRow[0]);
        $j("#zas").val(selectedRow[1]);
    }, 
        { // options
    oTitles : ["concept id", "concept name"],
    oHiddenCols : [0]
    }
 
    );
</script>
 
<fieldset>
<legend>Concepts Search</legend>
<button id="conceptSearchButton">Search Concepts</button>
<label>concept id: </label> <input id="foo" /> 
<label>concept name: </label> <input id="zas" />
</fieldset>

<%@ include file="/WEB-INF/template/footer.jsp"%>