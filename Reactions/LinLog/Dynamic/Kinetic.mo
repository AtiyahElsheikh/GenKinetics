within GenKinetics.Reactions.LinLog.Dynamic;
model Kinetic "Implementation of Linlog kinetic without modification"
  import GenKinetics;
  extends GenKinetics.Reactions.LinLog.ReactionTerm;
equation
  v = v_steady +R;
end Kinetic;
