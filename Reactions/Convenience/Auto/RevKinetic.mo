within GenKinetics.Reactions.Convenience.Auto;
model RevKinetic "S1 + S2 + ... <===> P1 + P2 + ... "
  extends GenKinetics.Reactions.Convenience.RevReactionTerm(redeclare final
      model Reversibility = Interfaces.Reactions.Reversible.TwoWays);
equation
  v = (S1 - P1) / (S2 + P2 - 1);
end RevKinetic;
