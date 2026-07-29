import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicFunctionsTransformsCanonicalLaneLean.CharacteristicFunctionsPackage

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsCanonicalLaneLean

structure LévyContinuityPackage {C : CharacteristicFunctionsPackage} where
  sequenceOfMeasures : Type u
  pointwiseLimit : Type v
  limitIsCharacteristicFunction : Prop
  tightnessCondition : Prop
  continuityTheoremStatement : Prop

structure LévyContinuityEvidence {C : CharacteristicFunctionsPackage}
    (L : LévyContinuityPackage C) where
  limitIsCharacteristicFunctionClosed : L.limitIsCharacteristicFunction
  tightnessConditionClosed : L.tightnessCondition
  continuityTheoremStatementClosed : L.continuityTheoremStatement

def LévyContinuityClosed {C : CharacteristicFunctionsPackage}
    (L : LévyContinuityPackage C) : Prop :=
  L.limitIsCharacteristicFunction ∧ L.tightnessCondition ∧ L.continuityTheoremStatement

theorem levy_continuity_closed_from_evidence {C : CharacteristicFunctionsPackage}
    (L : LévyContinuityPackage C) (E : LévyContinuityEvidence L) : LévyContinuityClosed L := by
  exact And.intro E.limitIsCharacteristicFunctionClosed
    (And.intro E.tightnessConditionClosed E.continuityTheoremStatementClosed)

end CharacteristicFunctionsTransformsCanonicalLaneLean
end HautevilleHouse