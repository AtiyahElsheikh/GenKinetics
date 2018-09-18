within GenKinetics.Interfaces;

package Reversible
  extends Modelica.Icons.BasesPackage;

  model ReactionReversibility "Base Type for describing Reversability of a reaction"
    parameter Units.ReactionCoef Vfwdmax = 1 "maximal forward reaction rate";
  end ReactionReversibility;


  model OneWay "Irreversible Reaction"
    extends ReactionReversibility;
    annotation(
      Icon(graphics = {Bitmap(extent = {{-78, 80}, {86, -80}}, fileName = "../../icons/OneWay.gif")}));
  end OneWay;



  partial model TwoWay "Reversible Reaction"
    extends ReactionReversibility;
    parameter Units.ReactionCoef Vbwdmax = 1 "backward maximal reaction rate";
    annotation(
      Icon(graphics = {Bitmap(extent = {{-110, 100}, {90, -100}}, fileName = "../../icons/TwoWay.gif")}));
  end TwoWay;
  annotation(
    Documentation(info = "<html><head></head><body><p>This subpackage contains basic interfaces describing the reversibility of a reaction</p><p><br>Licensed under the Modelica License 2</p><p><br>Copyright ©&nbsp;<a href=\"GenKinetics.UserGuide.CopyRight\" style=\"font-size: 12px;\">GenKinetics.UserGuide.CopyRight</a></p><p><i>This Modelica package is&nbsp;<u>free</u>&nbsp;software and the use is completely at&nbsp;<u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see&nbsp;<a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a>&nbsp;or visit<a href=\"http://www.modelica.org/licenses/ModelicaLicense2\">http://www.modelica.org/licenses/ModelicaLicense2</a>.</i></p></body></html>"));




end Reversible;