import canonicalLaneMathlib.AdmissibleClass

/-!
# Cramér–Wold Device Package
-/

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsCanonicalLaneLean

structure CramerWoldDevicePackage where
  multivariateDistribution : Type u → Type v
  oneDimensionalProjections : (Type v → ℂ) → Prop
  distributionDetermined : Prop
  linearCombinationUniqueness : Prop

structure CramerWoldDeviceEvidence (C : CramerWoldDevicePackage) where
  distributionDeterminedClosed : C.distributionDetermined
  linearCombinationUniquenessClosed : C.linearCombinationUniqueness

def CramerWoldDeviceClosed (C : CramerWoldDevicePackage) : Prop :=
  C.distributionDetermined ∧ C.linearCombinationUniqueness

theorem cramer_wold_device_closed_from_evidence
    (C : CramerWoldDevicePackage) (E : CramerWoldDeviceEvidence C) :
    CramerWoldDeviceClosed C := by
  exact And.intro E.distributionDeterminedClosed E.linearCombinationUniquenessClosed

end CharacteristicFunctionsTransformsCanonicalLaneLean
end HautevilleHouse