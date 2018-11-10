﻿within GenKinetics;
package Units
  extends Modelica.Icons.TypesPackage;

  type Concentration = Modelica.Icons.TypeReal(quantity="Concentration",unit = "mol/l", min = 0);

  type VolumetricReactionRate = Modelica.Icons.TypeReal(quantity="Volumetric reaction rate",unit = "mol/(s.l)");

  type MolarFlowRate = Modelica.Icons.TypeReal(unit = "mol/s");

  type ReactionCoef = Modelica.Icons.TypeReal(unit = "1/s");

  type StoichiometricCoef = Modelica.Icons.TypeReal(unit = "1");

  type ReactionCoef1st = Units.ReactionCoef;

  type ReactionCoef2nd = Modelica.Icons.TypeReal(unit = "l/(mol.s)");

  type AffinityConst = Modelica.Icons.TypeReal(unit = "mol/l");

  annotation (
    Documentation(info = "<html><head></head><body><p>This subpackage contains basic physical units describing main entitites of a biochemical reaction network model.</p><p><br>Licensed under the Modelica License 2</p><p><br>Copyright ©&nbsp;<a href=\"GenKinetics.UserGuide.CopyRight\">GenKinetics.UserGuide.CopyRight</a></p><p><i>This Modelica package is&nbsp;<u>free</u>&nbsp;software and the use is completely at&nbsp;<u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see&nbsp;<a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a>&nbsp;or visit<a href=\"http://www.modelica.org/licenses/ModelicaLicense2\">http://www.modelica.org/licenses/ModelicaLicense2</a>.</i></p></body></html>"));
end Units;
