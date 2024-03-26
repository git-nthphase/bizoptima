package org.apache.ofbiz;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.Calendar;

import org.apache.commons.lang.StringUtils;
/*import org.ofbiz.accounting.ledger.GeneralLedgerServices;*/

import org.apache.ofbiz.base.util.Debug;
import org.apache.ofbiz.base.util.GeneralException;
import org.apache.ofbiz.base.util.UtilDateTime;
import org.apache.ofbiz.base.util.UtilMisc;
import org.apache.ofbiz.base.util.UtilProperties;
import org.apache.ofbiz.base.util.UtilValidate;
import org.apache.ofbiz.entity.Delegator;
import org.apache.ofbiz.entity.GenericDelegator;
import org.apache.ofbiz.entity.GenericEntityException;
import org.apache.ofbiz.entity.GenericValue;
import org.apache.ofbiz.entity.condition.EntityCondition;
import org.apache.ofbiz.entity.condition.EntityOperator;
import org.apache.ofbiz.entity.util.EntityQuery;
import org.apache.ofbiz.entity.util.EntityUtilProperties;
import org.apache.ofbiz.order.finaccount.FinAccountHelper;
import org.apache.ofbiz.order.order.OrderReadHelper;
import org.apache.ofbiz.product.store.ProductStoreWorker;
import org.apache.ofbiz.service.DispatchContext;
import org.apache.ofbiz.service.GenericServiceException;
import org.apache.ofbiz.service.LocalDispatcher;
import org.apache.ofbiz.service.ServiceUtil;

public class MasterDataCreationServices {
	public static final String module = MasterDataCreationServices.class.getName();

	public static Map<String, Object> createPlant(DispatchContext dctx, Map<String, Object> context) {

		GenericDelegator delegator = (GenericDelegator) dctx.getDelegator();
		LocalDispatcher dispatcher = dctx.getDispatcher();
		Map<String, Object> result = ServiceUtil.returnSuccess();

		String facilityId = (String) context.get("facilityId");
		String facilityName = (String) context.get("facilityName");
		String ownerPartyId = (String) context.get("ownerPartyId");
		String facilityTypeId = (String) context.get("facilityTypeId");
		String effectiveDate = (String) context.get("effectiveDate");
		Timestamp fromDate = null;
		if (UtilValidate.isNotEmpty(effectiveDate)) {
			SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
			try {
				fromDate = new java.sql.Timestamp(sdf.parse(effectiveDate).getTime());
				// fromDate = UtilDateTime.getDayStart(fromDate);
			} catch (ParseException e) {
				Debug.logError(e, "Cannot parse date string: " + fromDate, module);
				return ServiceUtil.returnError("Cannot parse date string: " + fromDate);
			} catch (NullPointerException e) {
				Debug.logError(e, "Cannot parse date string: " + fromDate, module);
				return ServiceUtil.returnError("Cannot parse empty date string ");
			}
		}
		Debug.log("fromDate===" + fromDate);
		try {
			GenericValue newPlantFacility = delegator.makeValue("Facility");
			newPlantFacility.put("facilityId", facilityId);
			newPlantFacility.put("facilityName", facilityName);
			newPlantFacility.put("facilityTypeId", facilityTypeId);
			newPlantFacility.put("ownerPartyId", ownerPartyId);
			newPlantFacility.put("openedDate", fromDate);
			newPlantFacility.create();
		} catch (GenericEntityException e) {
			Debug.logError(e, e.getMessage());
			return ServiceUtil.returnError("Error while populating FacilityParty" + e);
		}

		result = ServiceUtil.returnSuccess("Plant " + facilityId + " created successfully");
		return result;

	}

	public static Map<String, Object> createZone(DispatchContext dctx, Map<String, Object> context) {

		return null;

	}

	public static Map<String, Object> createRoute(DispatchContext dctx, Map<String, Object> context) {

		return null;

	}

	public static Map<String, Object> createFacility(DispatchContext dctx, Map<String, Object> context) {
		return null;
	}

	public static Map<String, Object> createFacilityGroup(DispatchContext dctx, Map<String, Object> context) {
		return null;
	}

	public static Map<String, Object> createFacilityGroupMember(DispatchContext dctx, Map<String, Object> context) {
		return null;

	}
}
