import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

play = 1

main :: IO()
main = hspec $ do
  describe "number return number" $ do
    it "return 1 when 1 given" $ do
      play 1 `shouldBe` 1
