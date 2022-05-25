// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package templator.proxies.microflows;

import java.util.HashMap;
import java.util.Map;
import com.mendix.core.Core;
import com.mendix.systemwideinterfaces.core.IContext;

public class Microflows
{
	/**
	 * @deprecated
	 * The default constructor of the Microflows class should not be used.
	 * Use the static microflow invocation methods instead.
	 */
	@java.lang.Deprecated(since = "9.12", forRemoval = true)
	public Microflows() {}

	// These are the microflows for the Templator module
	public static void iVK_ShowPrintPagePrompt(IContext context, java.lang.String _parameterObjectID, java.lang.String _microflowName, java.lang.String _parameterEntityName, templator.proxies.Options _options)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		params.put("ParameterObjectID", _parameterObjectID);
		params.put("MicroflowName", _microflowName);
		params.put("ParameterEntityName", _parameterEntityName);
		params.put("Options", _options == null ? null : _options.getMendixObject());
		Core.microflowCall("Templator.IVK_ShowPrintPagePrompt").withParams(params).execute(context);
	}
}
