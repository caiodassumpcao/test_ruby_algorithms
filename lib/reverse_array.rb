# Dado um array, gire-o para a direita em k elementos.
# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# k = 3
# reverse array = {8, 9, 10, 1, 2, 3, 4, 5, 6, 7}
def reverse_array(array, k)
  return [] if array.empty?

  k %= array.length if array.length > 0
  k = array.length - k if k > array.length

  for i in 1..k
    temp = array.pop
    array.unshift(temp)
  end

  return array
end



array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 3
puts "Old array: #{array}"
puts "New array: #{reverse_array(array, k)}"