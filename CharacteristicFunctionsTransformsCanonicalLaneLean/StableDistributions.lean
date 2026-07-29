import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicFunctionsTransformsCanonicalLaneLean.CharacteristicFunctionsPackage

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsCanonicalLaneLean

structure StableDistributionsPackage {C : CharacteristicFunctionsPackage} where
  stabilityUnderSum : Prop
  characteristicExponent : Prop
  indexParameter : Prop
  skewnessParameter : Prop
  scaleParameter : Prop
  locationParameter : Prop
  levyKhintchineRepresentation : Prop

structure StableDistributionsEvidence {C : CharacteristicFunctionsPackage}
    (S : StableDistributionsPackage C) where
  stabilityUnderSumClosed : S.stabilityUnderSum
  characteristicExponentClosed : S.characteristicExponent
  indexParameterClosed : S.indexParameter
  skewnessParameterClosed : S.skewnessParameter
  scaleParameterClosed : S.scaleParameter
  locationParameterClosed : S.locationParameter
  levyKhintchineRepresentationClosed : S.levyKhintchineRepresentation

def StableDistributionsClosed {C : CharacteristicFunctionsPackage}
    (S : StableDistributionsPackage C) : Prop :=
  S.stabilityUnderSum ∧ S.characteristicExponent ∧ S.indexParameter ∧
  S.skewnessParameter ∧ S.scaleParameter ∧ S.locationParameter ∧
  S.levyKhintchineRepresentation

theorem stable_distributions_closed_from_evidence {C : CharacteristicFunctionsPackage}
    (S : StableDistributionsPackage C) (E : StableDistributionsEvidence S) : StableDistributionsClosed S := by
  exact And.intro E.stabilityUnderSumClosed
    (And.intro E.characteristicExponentClosed
      (And.intro E.indexParameterClosed
        (And.intro E.skewnessParameterClosed
          (And.intro E.scaleParameterClosed
            (And.intro E.locationParameterClosed E.levyKhintchineRepresentationClosed)))))

end CharacteristicFunctionsTransformsCanonicalLaneLean
end HautevilleHouse