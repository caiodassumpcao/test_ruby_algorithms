
def counting_sort(array)
  return [] if array.empty?

  max_value = array.max

  index_array = Array.new(max_value + 1, 0)

  array.each do |element|
    index_array[element] += 1
  end

  (1..max_value).each do |i|
    index_array[i] += index_array[i-1]
  end

  sorted_array = Array.new(array.size)

  array.each do |element|
    sorted_array[index_array[element] - 1] = element
    index_array[element] -= 1
  end

  sorted_array
end

array = [2, 9, 3, 1, 1, 8, 4, 9]
puts "#{counting_sort(array)}"
