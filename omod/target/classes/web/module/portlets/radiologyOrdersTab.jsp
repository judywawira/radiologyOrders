<%@ include file="/WEB-INF/template/include.jsp" %>

<!-- <openmrs:hasPrivilege privilege="View Patients">	-->
<openmrs:require privilege="View Patients" otherwise="/login.htm" redirect="/module/radiologyOrders/addorder.htm" />
<openmrs:htmlInclude file="/moduleResources/radiologyOrders/js/jquery-1.4.2.js" />
<openmrs:htmlInclude file="/moduleResources/radiologyOrders/js/jquery.dataTables.js" />
<openmrs:htmlInclude file="/moduleResources/radiologyOrders/css/dataTables.css" />
<openmrs:htmlInclude file="/moduleResources/radiologyOrders/js/jquery-ui-1.8.21.custom.min.js" />
<openmrs:htmlInclude file="/moduleResources/radiologyOrders/css/smoothness/jquery-ui-1.8.16.custom.css" />

<script type="text/javascript">
        var $j = jQuery.noConflict();
</script>

	<style type="text/css">
	#txtptname{
		enabled:false;
	}
	#txtptID{
		enabled:false;
	}
	</style>
	
			
  <script type="text/javascript">
  $(document).ready(function() {
    $("#datepicker").datepicker();
  });
  </script>
  
	
	<b> <font size=5> Add radiology order </font> </b>	<br> <br>
	
	<fieldset>
	<legend>Current Order</legend>
	
	<table border=0>
	
	<tr><td width="30%">
	Patient Name : </td> <td>
	<input type ="text" value='${patient.names}' id ="txtptname"/> </td>
	</tr><tr>
	
	<tr><td width="30%">
	Patient Identifier : </td> <td>
	<input type ="text" value='${patient.identifiers}' id ="txtptID"/> </td>
	</tr><tr>
	
	<tr><td width="30%">
	Location : </td> <td>
	<input type ="text"/> </td>
	</tr><tr>
	
	<td width="30%">
	Test to order : </td><td>
	<input type ="text"/> </td>
		</tr><tr>

	<td width="30%">
	Brief clinical history : </td> 
	<td> <textarea rows="5" cols="50"></textarea> </td>
	</tr>
	
	<tr>
	<td width="30%"> Provider:</td>
		<td><input type ="text"/></td>

	</tr>
	
	<tr>
	<td width="30%"> Order Date:</td>

	<td>	<input type="date"/>

	</td>
	</tr>
	
	</table>

	<input type="submit" value="Order Test"/>
	
	</fieldset>

<!--  </openmrs:hasPrivilege>  -->
