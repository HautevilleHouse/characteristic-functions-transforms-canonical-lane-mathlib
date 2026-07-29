import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsCanonicalLaneLean

structure CharacteristicFunctionPackage where
  probabilityMeasure : Type u
  realRandomVariable : Type v
  t : Type w
  characteristicFunction : probabilityMeasure → t → ℂ
  boundedness : Prop
  continuityAtZero : Prop
  positiveDefiniteness : Prop

structure CharacteristicFunctionEvidence (C : CharacteristicFunctionPackage) where
  boundednessClosed : C.boundedness
  continuityAtZeroClosed : C.continuityAtZero
  positiveDefinitenessClosed : C.positiveDefiniteness

def CharacteristicFunctionClosed (C : CharacteristicFunctionPackage) : Prop :=
  C.boundedness ∧ C.continuityAtZero ∧ C.positiveDefiniteness

theorem characteristic_function_closed_from_evidence (C : CharacteristicFunctionPackage)
    (E : CharacteristicFunctionEvidence C) : CharacteristicFunctionClosed C := by
  exact And.intro E.boundednessClosed (And.intro E.continuityAtZeroClosed E.positiveDefinitenessClosed)

end CharacteristicFunctionsTransformsCanonicalLaneLean
end HautevilleHouse