N = 3

def get_min(array)
  min_ind = 0
  (1...array.length).each do |i|
    min_ind = i if array[i] < array[min_ind]
  end
  min_ind
end

def get_max(array)
  max_ind = 0
  (1...array.length).each do |i|
    max_ind = i if array[i] > array[max_ind]
  end
  max_ind
end

def min_of_2(x, y)
  x < y ? x : y
end

def min_cash_flw(amount)
  mx_credit = get_max(amount)
  mx_debit = get_min(amount)

  return if amount[mx_credit] == 0 && amount[mx_debit] == 0

  min = min_of_2(-amount[mx_debit], amount[mx_credit])
  amount[mx_credit] -= min
  amount[mx_debit] += min

  puts "Person #{mx_debit} pays #{min} to Person #{mx_credit}"

  min_cash_flw(amount) unless amount.all?(&:zero?)
end

def calculate_cash_flw(graph)
  amount = Array.new(N, 0)

  (0...N).each do |p|
    (0...N).each do |i|
      amount[p] += graph[i][p] - graph[p][i]
    end
  end

  min_cash_flw(amount)
end

graph = [
  [0, 1000, 2000],
  [0, 0, 5000],
  [0, 0, 0]
]

calculate_cash_flw(graph)