within GenKinetics.Reactions.LinLog;
partial model InhibitionTerm
  "Inhibition term within the kinetic law"
  extends Interfaces.Reactions.Modifiers.Auto.InhibitionConnections;
  extends Reactions.ModifiersTerm;

  parameter Units.Elasticity delta[NI] = zeros(NI) "elasticity coefficients";
  parameter Units.Concentration I0[NI] = ones(NI) "Substrate concentration at a reference steady state";

protected
  Units.VolumetricReactionRate I "activation term";

equation
  if I > 0 then
    I = sum( delta .* log(mc_I.c ./ I0));
  else
    I = 0;
  end if;
end InhibitionTerm;
