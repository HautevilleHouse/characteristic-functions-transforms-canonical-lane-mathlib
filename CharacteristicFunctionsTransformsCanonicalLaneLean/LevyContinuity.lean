import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsCanonicalLaneLean

structure LevyContinuityPackage {C : CharacteristicFunctionsPackage} where
  pointwiseConvergence : Prop
  continuityAtZero : Prop
  limitCharacteristic : Prop
  limitDistribution : Prop

structure LevyContinuityEvidence {C : CharacteristicFunctionsPackage} (L : LevyContinuityPackage C) where
  pointwiseConvergenceClosed : L.pointwiseConvergence
  continuityAtZeroClosed : L.continuityAtZero
  limitCharacteristicClosed : L.limitCharacteristic
  limitDistributionClosed : L.limitDistribution

def LevyContinuityClosed {C : CharacteristicFunctionsPackage} (L : LevyContinuityPackage C) : Prop :=
  L.pointwiseConvergence ∧ L.continuityAtZero ∧ L.limitCharacteristic ∧ L.limitDistribution

theorem levy_continuity_closed_from_evidence {C : CharacteristicFunctionsPackage} (L : LevyContinuityPackage C) (E : LevyContinuityEvidence L) : LevyContinuityClosed L :=
  And.intro E.pointwiseConvergenceClosed (And.intro E.continuityAtZeroClosed (And.intro E.limitCharacteristicClosed E.limitDistributionClosed))

end CharacteristicFunctionsTransformsCanonicalLaneLean
end HautevilleHouse
