package org.openmrs.module.radiologyOrders.web.dwr;

import java.util.List;
import java.util.Vector;

import org.openmrs.Location;
import org.openmrs.User;
import org.openmrs.api.context.Context;

public class DWRRadiologyOrdersService {
	public List<String> getAllLocations() {
	     List<String> locationNames = new Vector<String>();
	     for (Location loc : Context.getLocationService().getAllLocations()) {
	           locationNames.add(loc.getName());
	           System.out.println(locationNames);
	     }
	     return locationNames;
	     
	}
	

}