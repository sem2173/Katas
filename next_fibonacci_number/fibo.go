package fibo

func fibo_after(value int) int {
  next_value := 0
  switch {
    case value == 0: next_value = 1
    case value == 1: next_value = 2
    case value == 2: next_value = 3
  }
  return next_value
}
