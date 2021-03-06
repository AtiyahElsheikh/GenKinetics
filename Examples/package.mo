within GenKinetics;
package Examples "set of examples"
  extends Modelica.Icons.ExamplesPackage;

  model SpirallusLinLog "An abstraction of the TCA cycle with dynamic arbitrary number of connections implemented "
    extends Modelica.Icons.Example;
    import GenKinetics.Substances.Auto.*;
    import GenKinetics.Reactions.LinLog.Auto.*;
  Substances.Auto.ReferencedAmbientSubstance Aex(c_0=0.1, c_steady=0.1);
    InhKinetic vupt(NS = 1, NP = 1, NI = 1, I0 = {A.c_steady}, S0 = {Aex.c_steady}, P0 = {A.c_steady}, alpha = {0.77}, theta = {0.33}, delta = {0.45}, v_steady = 0.5);
  Substances.Auto.ReferencedSubstance A(c_0=0.01, c_steady=0.026);
    Kinetic v1(NS = 1, NP = 1, S0 = {A.c_steady}, P0 = {B.c_steady}, alpha = {2.1}, theta = {-0.3}, v_steady = 0.5);
  Substances.Auto.ReferencedSubstance B(c_0=0.2, c_steady=0.323);
    Kinetic v5(NS = 1, NP = 1, S0 = {B.c_steady}, P0 = {E.c_steady}, alpha = {1.22}, theta = {0.45}, v_steady = 0.25);
  Substances.Auto.ReferencedSubstance E(c_0=18.3, c_steady=0.4258);
    Kinetic v2(NS = 2, NP = 1, S0 = {B.c_steady, E.c_steady}, P0 = {C.c_steady}, alpha = {1.56, 0.35}, theta = {0.45}, v_steady = 0.25);
    // B,E -v2-> C
  Substances.Auto.ReferencedSubstance C(c_0=18.5, c_steady=0.36);
    InhKinetic v3(NS = 1, NP = 2, NI = 1, S0 = {C.c_steady}, P0 = {D.c_steady, F.c_steady}, I0 = {D.c_steady}, alpha = {0.45}, theta = {-0.42, 1.2}, delta = {-1.2}, v_steady = 0.25);
  Substances.Auto.ReferencedSubstance D(c_0=0.01, c_steady=0.013);
  Substances.Auto.ReferencedSubstance F(c_0=18.1, c_steady=0.37);
    InhKinetic v4(NS = 1, NP = 2, NI = 1, S0 = {D.c_steady}, P0 = {E.c_steady, F.c_steady}, I0 = {C.c_steady}, alpha = {0.23}, theta = {0.33, 0.34}, delta = {-0.9}, v_steady = 0.25);
    Kinetic v6(NS = 1, NP = 1, S0 = {E.c_steady}, P0 = {Eex.c_steady}, alpha = {0.005}, theta = {0}, v_steady = 0.25);
  Substances.Auto.ReferencedSubstance Eex(c_0=10, c_steady=2.4);
    Kinetic v7(NS = 1, NP = 1, S0 = {F.c_steady}, P0 = {Fex.c_steady}, alpha = {0.005}, theta = {0.05}, v_steady = 0.48);
  Substances.Auto.ReferencedSubstance Fex(c_0=100, c_steady=4.2);
  equation
  // vupt
    connect(Aex.rc, vupt.rc_S[1]);
    connect(vupt.rc_P[1], A.rc);
    connect(vupt.mc_I[1], A.mc);
  // v1
    connect(A.rc, v1.rc_S[1]);
    connect(v1.rc_P[1], B.rc);
  // v5
    connect(B.rc, v5.rc_S[1]);
    connect(v5.rc_P[1], E.rc);
  // v2
    connect(B.rc, v2.rc_S[1]);
    connect(E.rc, v2.rc_S[2]);
    connect(v2.rc_P[1], C.rc);
  // v3
    connect(C.rc, v3.rc_S[1]);
    connect(v3.rc_P[1], D.rc);
    connect(v3.rc_P[2], F.rc);
    connect(D.mc, v3.mc_I[1]);
  // v4
    connect(D.rc, v4.rc_S[1]);
    connect(v4.rc_P[1], F.rc);
    connect(v4.rc_P[2], E.rc);
    connect(v4.mc_I[1], C.mc);
  // v6
    connect(E.rc, v6.rc_S[1]);
    connect(v6.rc_P[1], Eex.rc);
  // v7
    connect(F.rc, v7.rc_S[1]);
    connect(v7.rc_P[1], Fex.rc);
    annotation (
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", maxIntegrationOrder = "4", s = "dassl"));
  end SpirallusLinLog;





  annotation (
    Documentation(info="<html>
<p>This package contains examples of typical metablic pathway models.</p>
</html>"));
end Examples;
