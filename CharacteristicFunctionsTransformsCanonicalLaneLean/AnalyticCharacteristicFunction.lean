import canonicalLaneMathlib.AdmissibleClass

/-!
# Analytic Characteristic Function Package
-/

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsCanonicalLaneLean

structure AnalyticCharacteristicFunctionPackage where
  distribution : Type u
  mgfDomain : Type v
  momentGeneratingFunction : distribution → mgfDomain → ℝ
  analyticExtension : Prop
  momentDeterminacy : Prop
  cumulantStructure : Prop

structure AnalyticCharacteristicFunctionEvidence (A : AnalyticCharacteristicFunctionPackage) where
  analyticExtensionClosed : A.analyticExtension
  momentDeterminacyClosed : A.momentDeterminacy
  cumulantStructureClosed : A.cumulantStructure

def AnalyticCharacteristicFunctionClosed (A : AnalyticCharacteristicFunctionPackage) : Prop :=
  A.analyticExtension ∧ A.momentDeterminacy ∧ A.cumulantStructure

theorem analytic_characteristic_function_closed_from_evidence
    (A : AnalyticCharacteristicFunctionPackage) (E : AnalyticCharacteristicFunctionEvidence A) :
    AnalyticCharacteristicFunctionClosed A := by
  exact And.intro E.analyticExtensionClosed (And.intro E.momentDeterminacyClosed E.cumulantStructureClosed)

end CharacteristicFunctionsTransformsCanonicalLaneLean
end HautevilleHouse