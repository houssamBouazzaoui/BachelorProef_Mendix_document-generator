package system;

import com.mendix.core.actionmanagement.IActionRegistrator;

public class UserActionsRegistrar
{
  public void registerActions(IActionRegistrator registrator)
  {
    registrator.bundleComponentLoaded();
    registrator.registerUserAction(system.actions.VerifyPassword.class);
    registrator.registerUserAction(templator.actions.GeneratePDFForCurrentUser.class);
    registrator.registerUserAction(templator.actions.GeneratePDFForSpecificUser.class);
  }
}
