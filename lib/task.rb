def tasks(input = $stdin, output = $stdout)
  tasks_array = []
  x = 0 #variavél para cancelar o loop (cancela quando x = 1)
  limit_task = 15 #variavel define limite de task

  while x == 0
    output.puts "digite a task de hoje"
    task = input.gets.chomp
    tasks_array << task

    output.puts "Tem mais alguma task? (Y/N)"
    more_task = input.gets.chomp

    break if more_task.downcase == "n"
  end

  tasks_array
end
