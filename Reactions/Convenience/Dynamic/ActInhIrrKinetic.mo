within GenKinetics.Reactions.Convenience.Dynamic;
model ActInhIrrKinetic "S1 + S2 + ...  ==I1,I2,...==> P1 + P2 + ... "
  extends GenKinetics.Reactions.Convenience.IrrReactionTerm(
    redeclare final model Modifiers =
        Reactions.Convenience.ActivationAndInhibitionTerms,
    redeclare final model Reversibility =
                                 Interfaces.Reversible.OneWay);
equation
  v = A * I * S1 / S2;
end ActInhIrrKinetic;
