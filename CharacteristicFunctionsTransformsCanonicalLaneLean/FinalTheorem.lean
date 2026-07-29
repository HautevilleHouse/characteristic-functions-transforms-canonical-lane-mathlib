import canonicalLaneMathlib.AdmissibleClass
import CharacteristicFunctionTransform
import BochnersTheorem
import LevyContinuityTheorem

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsCanonicalLaneLean

def ConstrainedCharacteristicTransformsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_characteristic_transforms_endgame (A : AdmissibleClass) :
    ConstrainedCharacteristicTransformsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CharacteristicFunctionsTransformsCanonicalLaneLean
end HautevilleHouse