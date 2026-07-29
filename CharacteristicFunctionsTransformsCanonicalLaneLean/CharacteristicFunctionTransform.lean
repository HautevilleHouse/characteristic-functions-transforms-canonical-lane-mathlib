import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsCanonicalLaneLean

structure CharacteristicFunctionPackage where
  probabilitySpace : Type u
  sigmaAlgebra : Set (Set probabilitySpace)
  probabilityMeasure : probabilitySpace → ℝ
  randomVariable : probabilitySpace → ℝ
  characteristicFunction : ℝ → ℂ
  fourierInversionHolds : Prop
  continuityAtZero : Prop

def characteristicFunctionClosed (P : CharacteristicFunctionPackage) : Prop :=
  P.fourierInversionHolds ∧ P.continuityAtZero

end CharacteristicFunctionsTransformsCanonicalLaneLean
end HautevilleHouse