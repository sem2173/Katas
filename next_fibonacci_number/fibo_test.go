package fibo

import (
  "testing"
)

func Test0Donne1(t *testing.T) {
  if fibo_after(0) != 1 { t.Error() }
}

func Test1Donne1(t *testing.T) {
  if fibo_after(1) != 2 { t.Error() }
}

func Test2Donne3(t *testing.T) {
  if fibo_after(2) != 3 { t.Error() }
}
