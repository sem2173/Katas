
def testCasBasiques
  assert_equal(0, montantTotal([]))
  assert_equal(8, montantTotal([0]))
  assert_equal(8, montantTotal([1]))
  assert_equal(8, montantTotal([2]))
  assert_equal(8, montantTotal([3]))
  assert_equal(8, montantTotal([4]))
  assert_equal(8 * 2, montantTotal([0, 0]))
  assert_equal(8 * 3, montantTotal([1, 1, 1]))
end

def testReductionsSimples
  assert_equal(8 * 2 * 0.95, montantTotal([0, 1]))
  assert_equal(8 * 3 * 0.9, montantTotal([0, 2, 4]))
  assert_equal(8 * 4 * 0.8, montantTotal([0, 1, 2, 4]))
  assert_equal(8 * 5 * 0.75, montantTotal([0, 1, 2, 3, 4]))
end

def testPlusieursReductionsCombinees
  assert_equal(8 + (8 * 2 * 0.95), montantTotal([0, 0, 1]))
  assert_equal(2 * (8 * 2 * 0.95), montantTotal([0, 0, 1, 1]))
  assert_equal((8 * 4 * 0.8) + (8 * 2 * 0.95), montantTotal([0, 0, 1, 2, 2, 3]))
  assert_equal(8 + (8 * 5 * 0.75), montantTotal([0, 1, 1, 2, 3, 4]))
end

def testCasTordus
  assert_equal(2 * (8 * 4 * 0.8), montantTotal([0, 0, 1, 1, 2, 2, 3, 4]))
  assert_equal(3 * (8 * 5 * 0.75) + 2 * (8 * 4 * 0.8), 
               montantTotal([0, 0, 0, 0, 0, 
                             1, 1, 1, 1, 1, 
                             2, 2, 2, 2, 
                             3, 3, 3, 3, 3, 
                             4, 4, 4, 4]))
end
