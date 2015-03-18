def sum(numbers:)
  sum = 0
  numbers.each do |value|
    sum += value
  end
  return sum
end

def min(numbers:)
  min = numbers.first
  numbers.each do |value|
    if value < min
      min = value
    end
  end
  return min
end

def max(numbers:)
  max = numbers.first
  numbers.each do |value|
    if value > max
      max = value
    end
  end
  return max
end

def average(numbers:)
  return nil if numbers.empty?
  return sum(numbers:numbers)/numbers.length.to_f
end

def median(numbers:)
  return nil if numbers.empty?
  numbers = numbers.sort
  if numbers.length.even?
    return (numbers[numbers.length/2] + numbers[numbers.length/2 - 1])/2.to_f
  else
    return numbers[numbers.length/2]
  end
end

