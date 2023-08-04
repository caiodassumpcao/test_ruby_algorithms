n = 5
array = [1, 2, 3, -2, 5]
def kadane(array)
  max_sum = max_far = array[0]
  array[1..-1].each do |num|
    # Funç~ao ".max" pega o maior numero dentro dos dois enviados no parametro (num ou max_sum + num)
    max_sum = [num, max_sum + num].max
    max_far = [max_sum, max_far].max
  end

  return max_far
end

puts kadane(array, n)