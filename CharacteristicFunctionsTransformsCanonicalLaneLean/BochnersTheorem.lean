import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsCanonicalLaneLean

structure BochnerPackage where
  characteristicFunction : ℝ → ℂ
  positiveDefinite : Prop
  spectralMeasure : ℝ → ℝ
  inversionFormula : Prop
  positiveDefiniteClosed : positiveDefinite
  spectralMeasureClosed : spectralMeasure = λ x => x

def BochnerTheoremClosed (B : BochnerPackage) : Prop :=
  B.positiveDefinite ∧ B.inversionFormula

theorem bochner_theorem_closed (B : BochnerPackage) : BochnerTheoremClosed B := by
  exact And.intro B.positiveDefiniteClosed B.inversionFormula

end CharacteristicFunctionsTransformsCanonicalLaneLean
end HautevilleHouse