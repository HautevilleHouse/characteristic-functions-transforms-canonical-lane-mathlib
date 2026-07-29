import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CharFunWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CharacteristicFunctionsTransformsCanonicalLaneLean
end HautevilleHouse