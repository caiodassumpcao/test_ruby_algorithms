#Reorder an array according to given indexes - Reordenar uma matriz de acordo com os índices fornecidos

def reorder(array, index, n)
  raise ArgumentError, 'Arrays must have the same length' if array.length != index.length

  temp = Array.new(n)

  (0...n).each do |i|
    temp[index[i]] = array[i]
  end

  (0...n).each do |i|
    array[i] = temp[i]
    index[i] = i
  end
end

array = [50, 40, 70, 60, 90]
index = [3, 0, 4, 1, 2]
n = array.length

reorder(array, index, n)

puts "Array reordenado:"
(0...n).each do |i|
  print " #{array[i]}"
end

puts "\nArray de índices modificados:"
(0...n).each do |i|
  print " #{index[i]}"
end