import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsCanonicalLaneLean

structure SumsIndependencePackage {C : CharacteristicFunctionsPackage} where
  sumCharacteristicProduct : Prop
  independenceCharacterization : Prop
  cLTConvergence : Prop

structure SumsIndependenceEvidence {C : CharacteristicFunctionsPackage} (S : SumsIndependencePackage C) where
  sumCharacteristicProductClosed : S.sumCharacteristicProduct
  independenceCharacterizationClosed : S.independenceCharacterization
  cLTConvergenceClosed : S.cLTConvergence

def SumsIndependenceClosed {C : CharacteristicFunctionsPackage} (S : SumsIndependencePackage C) : Prop :=
  S.sumCharacteristicProduct ∧ S.independenceCharacterization ∧ S.cLTConvergence

theorem sums_independence_closed_from_evidence {C : CharacteristicFunctionsPackage} (S : SumsIndependencePackage C) (E : SumsIndependenceEvidence S) : SumsIndependenceClosed S :=
  And.intro E.sumCharacteristicProductClosed (And.intro E.independenceCharacterizationClosed E.cLTConvergenceClosed)

end CharacteristicFunctionsTransformsCanonicalLaneLean
end HautevilleHouse
