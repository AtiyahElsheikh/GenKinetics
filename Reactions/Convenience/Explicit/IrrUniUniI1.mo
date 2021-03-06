within GenKinetics.Reactions.Convenience.Explicit;
model IrrUniUniI1 "S + I => P"
  extends Interfaces.Reactions.Uui;
  extends Interfaces.Reactions.Modifiers.Inhibitor;
  extends Interfaces.Reactions.ReactionRate;

  parameter GenKinetics.Units.AffinityConst km;
  parameter Units.ReactionCoef Vmax;
  parameter Units.AffinityConst ki;

protected
  Generic.Kinetic kinetic(NS=1, NP=1, NA=0, NI=1, KmS = {km},
                          Vfwdmax = Vmax, KI = {ki}, Reversible = Reversible);

equation
 connect(rc_S1, kinetic.rc_S[1]);

 connect(rc_P1, kinetic.rc_P[1]);

 connect(mc_I1, kinetic.mc_I[1]);

 v = kinetic.v;
end IrrUniUniI1;
