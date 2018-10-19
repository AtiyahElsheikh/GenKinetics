within GenKinetics.UnitTests;
model TestDynamicIrrKinetic2SvP

  parameter Real S10 = 1.0 "initial concentration of S";
  parameter Real S20 = 1.0 "initial concentration of S";
  parameter Real vfwd = 1.0 "kinetic parameter";
  parameter Real kmS1 = 1.5 "kinetic parameter";
  parameter Real kmS2 = 0.3 "kinetic parameter";

  GenKinetics.UnitTests.Internal.AssertContinuousTrajectory check1(MaxAccErr=
        1e-3, name="Dynamic Irreversible Kinetic S1 + S2 => P") annotation (
      Placement(visible=true, transformation(
        origin={46,-60},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Internal.OOS1S2vP SR1(
    S10=S10,
    S20=S20,
    vfwd=vfwd,
    kmS1=kmS1,
    kmS2=kmS2) "Simple Reaction S1 + S2 => P" annotation (Placement(visible=
          true, transformation(
        origin={-34,50},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Internal.S1S2vP SR2(
    S10=S10,
    S20=S20,
    vfwd=vfwd,
    kmS1=kmS1,
    kmS2=kmS2) "Explicit Simple Reaction S1 + S2 => P" annotation (Placement(
        visible=true, transformation(
        origin={-54,-46},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Internal.AssertContinuousTrajectory check2 annotation (Placement(visible=true,
        transformation(
        origin={50,58},
        extent={{-10,-10},{10,10}},
        rotation=0)));
equation
  connect(SR2.v, check1.T2) annotation (
    Line(points = {{-44, -46}, {-8, -46}, {-8, -68}, {37, -68}}, color = {0, 0, 127}));
  connect(SR1.r, check1.T1) annotation (
    Line(points = {{-24, 50}, {-8, 50}, {-8, -53}, {36, -53}}, color = {0, 0, 127}));
  connect(SR2.S1, check2.T2) annotation (
    Line(points = {{-44, -38}, {10, -38}, {10, 50}, {40, 50}}, color = {0, 0, 127}));
  connect(SR1.S1c, check2.T1) annotation (
    Line(points = {{-24, 58}, {4, 58}, {4, 64}, {40, 64}}, color = {0, 0, 127}));
  annotation (
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02),
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "rungekutta"));
end TestDynamicIrrKinetic2SvP;