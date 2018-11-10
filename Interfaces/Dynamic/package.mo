﻿within GenKinetics.Interfaces;
package Dynamic
  extends Modelica.Icons.BasesPackage;















  partial model ActivationConnections
    extends ModifiersConnections;
    GenKinetics.Interfaces.Ports.ModifierChemicalPort_I mc_A[NA] "connection to activators";
  end ActivationConnections;













  partial model ModifiersConnections
    replaceable model Inhibition =
      Interfaces.Dynamic.Modifier.UnspecifiedInhibition                              constrainedby
    Interfaces.Dynamic.Modifier.ReactionInhibition;
    extends Inhibition;
    replaceable model Activation =
      Interfaces.Dynamic.Modifier.UnspecifiedActivation                              constrainedby
    Interfaces.Dynamic.Modifier.ReactionActivation;
    extends Activation;
  end ModifiersConnections;

  annotation (
    Documentation(info = "<html><head></head><body><p>This subpackage contains basic interfaces for nodes and reactions. The nodes and the reactions are declared with a \"dynamic\" parameterized number of connectors.</p><p><br>Licensed under the Modelica License 2</p><p><br>Copyright ©&nbsp;<a href=\"GenKinetics.UserGuide.CopyRight\" style=\"font-size: 12px;\">GenKinetics.UserGuide.CopyRight</a></p><p><i>This Modelica package is&nbsp;<u>free</u>&nbsp;software and the use is completely at&nbsp;<u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see&nbsp;<a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a>&nbsp;or visit<a href=\"http://www.modelica.org/licenses/ModelicaLicense2\">http://www.modelica.org/licenses/ModelicaLicense2</a>.</i></p></body></html>"));
end Dynamic;
