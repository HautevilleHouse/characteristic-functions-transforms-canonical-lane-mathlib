import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicFunctionsTransformsCanonicalLaneLean.CharacteristicFunctionsPackage

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsCanonicalLaneLean

structure InversionFormulaPackage {C : CharacteristicFunctionsPackage} where
  densityRecovery : Prop
  fourierInversion : Prop
  integrabilityCondition : Prop
  absoluteContinuityCondition : Prop

structure InversionFormulaEvidence {C : CharacteristicFunctionsPackage}
    (I : InversionFormulaPackage C) where
  densityRecoveryClosed : I.densityRecovery
  fourierInversionClosed : I.fourierInversion
  integrabilityConditionClosed : I.integrabilityCondition
  absoluteContinuityConditionClosed : I.absoluteContinuityCondition

def InversionFormulaClosed {C : CharacteristicFunctionsPackage}
    (I : InversionFormulaPackage C) : Prop :=
  I.densityRecovery ∧ I.fourierInversion ∧ I.integrabilityCondition ∧ I.absoluteContinuityCondition

theorem inversion_formula_closed_from_evidence {C : CharacteristicFunctionsPackage}
    (I : InversionFormulaPackage C) (E : InversionFormulaEvidence I) : InversionFormulaClosed I := by
  exact And.intro E.densityRecoveryClosed
    (And.intro E.fourierInversionClosed
      (And.intro E.integrabilityConditionClosed E.absoluteContinuityConditionClosed))

end CharacteristicFunctionsTransformsCanonicalLaneLean
end HautevilleHouse