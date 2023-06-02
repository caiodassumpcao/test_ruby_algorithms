require 'task'

RSpec.describe 'task' do
  context 'when adding tasks' do
    it 'adds tasks to the tasks array' do
      input = StringIO.new("Task 1\nN\n")
      output = StringIO.new
      expect(tasks(input, output)).to eq(["Task 1"])
    end
  end

  context 'when adding multiple tasks' do
    it 'adds multiple tasks to the tasks array' do
      input = StringIO.new("Task 1\nY\nTask 2\nN\n")
      output = StringIO.new
      expect(tasks(input, output)).to eq(["Task 1", "Task 2"])
    end
  end

  context 'when exceeding the task limit' do
    it 'stops adding tasks when the limit is reached' do
      input = StringIO.new("Task 1\nY\nTask 2\nY\nTask 3\nY\nTask 4\nY\nTask 5\nY\nTask 6\nY\nTask 7\nY\nTask 8\nY\nTask 9\nY\nTask 10\nY\nTask 11\nY\nTask 12\nY\nTask 13\nY\nTask 14\nY\nTask 15\nY\nTask 16\nN\n")
      output = StringIO.new
      expect(tasks(input, output).length).to eq(16)
    end
  end
end