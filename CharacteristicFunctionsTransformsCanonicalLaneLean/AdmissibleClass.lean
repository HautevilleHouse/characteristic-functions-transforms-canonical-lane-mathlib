import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsCanonicalLaneLean

structure AdmissibleClass where
  object : CharFunAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CharFunWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CharacteristicFunctionsTransformsCanonicalLaneLean
end HautevilleHouse