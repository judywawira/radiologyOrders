package org.openmrs.module.radiologyOrders.extension.html;

import org.openmrs.module.Extension;
import org.openmrs.module.web.extension.PatientDashboardTabExt;

/**
 * This class defines the links that will appear on the patient dashboard page as a tab
 */

public class RadiologyOrdersDashboardTab extends PatientDashboardTabExt {

	   public Extension.MEDIA_TYPE getMediaType() {
	      return Extension.MEDIA_TYPE.html;
	   }
	   
	    @Override
	    public String getPortletUrl() {

	        return "radiologyOrdersTab";
	    }

	    /**
	     * @see org.openmrs.module.web.extension.PatientDashboardTabExt#getRequiredPrivilege()
	     */
	    @Override
	    public String getRequiredPrivilege() {

	        return "View Patients";
	    }

	    /**
	     * @see org.openmrs.module.web.extension.PatientDashboardTabExt#getTabId()
	     */
	    @Override
	    public String getTabId() {

	        return "radiologyOrdersId";
	    }

	    /**
	     * @see org.openmrs.module.web.extension.PatientDashboardTabExt#getTabName()
	     */
	    @Override
	    public String getTabName() {

	        return "Radiology Orders";
	    }
}
