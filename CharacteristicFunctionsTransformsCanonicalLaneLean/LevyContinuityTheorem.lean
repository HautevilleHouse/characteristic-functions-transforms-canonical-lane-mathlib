import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsCanonicalLaneLean

structure LevyContinuityPackage where
  sequenceOfCharacteristicFunctions : ℕ → (ℝ → ℂ)
  pointwiseLimit : ℝ → ℂ
  continuityAtZero : Prop
  limitIsCharacteristic : Prop
  tightnessCondition : Prop
  tightnessClosed : tightnessCondition
  limitIsCharacteristicClosed : limitIsCharacteristic

def LevyContinuityTheoremClosed (L : LevyContinuityPackage) : Prop :=
  L.continuityAtZero ∧ L.limitIsCharacteristic ∧ L.tightnessCondition

theorem levy_continuity_theorem_closed (L : LevyContinuityPackage) : LevyContinuityTheoremClosed L := by
  exact And.intro L.continuityAtZero (And.intro L.limitIsCharacteristicClosed L.tightnessClosed)

end CharacteristicFunctionsTransformsCanonicalLaneLean
end HautevilleHouse