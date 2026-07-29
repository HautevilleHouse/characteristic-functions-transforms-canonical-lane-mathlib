import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsCanonicalLaneLean

structure CharacteristicFunctionsPackage where
  probabilitySpace : Type u
  randomVariable : Type v
  transformKernel : Type w
  inversionFormula : Prop
  continuityProperty : Prop
  differentiabilityProperty : Prop
  uniquenessTheorem : Prop
  bochnersTheorem : Prop

structure CharacteristicFunctionsEvidence (C : CharacteristicFunctionsPackage) where
  inversionFormulaClosed : C.inversionFormula
  continuityPropertyClosed : C.continuityProperty
  differentiabilityPropertyClosed : C.differentiabilityProperty
  uniquenessTheoremClosed : C.uniquenessTheorem
  bochnersTheoremClosed : C.bochnersTheorem

def CharacteristicFunctionsClosed (C : CharacteristicFunctionsPackage) : Prop :=
  C.inversionFormula ∧ C.continuityProperty ∧ C.differentiabilityProperty ∧
  C.uniquenessTheorem ∧ C.bochnersTheorem

theorem characteristic_functions_closed_from_evidence (C : CharacteristicFunctionsPackage)
    (E : CharacteristicFunctionsEvidence C) : CharacteristicFunctionsClosed C := by
  exact And.intro E.inversionFormulaClosed
    (And.intro E.continuityPropertyClosed
      (And.intro E.differentiabilityPropertyClosed
        (And.intro E.uniquenessTheoremClosed E.bochnersTheoremClosed)))

end CharacteristicFunctionsTransformsCanonicalLaneLean
end HautevilleHouse