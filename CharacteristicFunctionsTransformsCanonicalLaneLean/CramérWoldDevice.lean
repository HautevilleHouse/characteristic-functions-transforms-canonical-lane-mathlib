import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicFunctionsTransformsCanonicalLaneLean.CharacteristicFunctionsPackage

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsCanonicalLaneLean

structure CramérWoldDevicePackage {C : CharacteristicFunctionsPackage} where
  finiteDimensionalProjections : Prop
  distributionDeterminedByProjections : Prop
  multivariateContinuityTheorem : Prop
  linearCombinationSufficiency : Prop

structure CramérWoldDeviceEvidence {C : CharacteristicFunctionsPackage}
    (W : CramérWoldDevicePackage C) where
  finiteDimensionalProjectionsClosed : W.finiteDimensionalProjections
  distributionDeterminedByProjectionsClosed : W.distributionDeterminedByProjections
  multivariateContinuityTheoremClosed : W.multivariateContinuityTheorem
  linearCombinationSufficiencyClosed : W.linearCombinationSufficiency

def CramérWoldDeviceClosed {C : CharacteristicFunctionsPackage}
    (W : CramérWoldDevicePackage C) : Prop :=
  W.finiteDimensionalProjections ∧ W.distributionDeterminedByProjections ∧
  W.multivariateContinuityTheorem ∧ W.linearCombinationSufficiency

theorem cramer_wold_device_closed_from_evidence {C : CharacteristicFunctionsPackage}
    (W : CramérWoldDevicePackage C) (E : CramérWoldDeviceEvidence W) : CramérWoldDeviceClosed W := by
  exact And.intro E.finiteDimensionalProjectionsClosed
    (And.intro E.distributionDeterminedByProjectionsClosed
      (And.intro E.multivariateContinuityTheoremClosed E.linearCombinationSufficiencyClosed))

end CharacteristicFunctionsTransformsCanonicalLaneLean
end HautevilleHouse