import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsCanonicalLaneLean

structure CharFunSpace where
  carrier : Type
  measureSpace : MeasurableSpace carrier

structure CharFunAdmittedObject where
  space : CharFunSpace
  probabilityMeasure : Prop
  characteristicFunction : (carrier := space.carrier) → ℂ → ℂ
  levyContinuity : Prop
  inversionFormula : Prop
  conclusion : levyContinuity ∧ inversionFormula

def CharFunWitnessClosed (O : CharFunAdmittedObject) : Prop :=
  O.levyContinuity ∧ O.inversionFormula

end CharacteristicFunctionsTransformsCanonicalLaneLean
end HautevilleHouse