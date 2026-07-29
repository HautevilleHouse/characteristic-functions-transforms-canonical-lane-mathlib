import canonicalLaneMathlib.AdmissibleClass

/-!
# Inversion Formulas Package
-/

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsCanonicalLaneLean

structure InversionFormulasPackage where
  distribution : Type u
  characteristicFunction : Type v → ℂ
  densityRecovery : Prop
  distributionFunctionRecovery : Prop
  integrabilityCondition : Prop

structure InversionFormulasEvidence (I : InversionFormulasPackage) where
  densityRecoveryClosed : I.densityRecovery
  distributionFunctionRecoveryClosed : I.distributionFunctionRecovery
  integrabilityConditionClosed : I.integrabilityCondition

def InversionFormulasClosed (I : InversionFormulasPackage) : Prop :=
  I.densityRecovery ∧ I.distributionFunctionRecovery ∧ I.integrabilityCondition

theorem inversion_formulas_closed_from_evidence
    (I : InversionFormulasPackage) (E : InversionFormulasEvidence I) :
    InversionFormulasClosed I := by
  exact And.intro E.densityRecoveryClosed (And.intro E.distributionFunctionRecoveryClosed E.integrabilityConditionClosed)

end CharacteristicFunctionsTransformsCanonicalLaneLean
end HautevilleHouse