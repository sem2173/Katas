
ROMAIN = {nil => 0, "I" => 1, "V" => 5, "X" => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}

def convert_to_decimal(romain, result=0)
  first, second, tail = romain.split('')
  if ROMAIN[first] < ROMAIN[second]
    result = ROMAIN[second] - ROMAIN[first] 
  else
    result = ROMAIN[first]  + ROMAIN[second]
  end
  if tail
    result += convert_to_decimal(tail, result)
  end
  result
end

