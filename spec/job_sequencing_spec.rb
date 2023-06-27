require 'job_sequencing'

RSpec.describe 'Job Sequencing' do
  describe '#printjobscheduling' do
    context 'when there are jobs with different deadlines' do
      it 'prints the maximum profit job sequence' do
        array = [
          Job.new('a', 2, 100),
          Job.new('b', 1, 19),
          Job.new('c', 2, 27),
          Job.new('d', 1, 25),
          Job.new('e', 3, 15)
        ]

        expected_output = 'cae'
        expect { printjobscheduling(array, array.length) }.to output(expected_output).to_stdout
      end
    end

    context 'when all jobs have the same deadline' do
      it 'prints the maximum profit job sequence' do
        array = [
          Job.new('a', 1, 100),
          Job.new('b', 1, 50),
          Job.new('c', 1, 25),
          Job.new('d', 1, 10)
        ]

        expected_output = 'a'
        expect { printjobscheduling(array, array.length) }.to output(expected_output).to_stdout
      end
    end

    context 'when there are no jobs' do
      it 'prints nothing' do
        array = []
        expect { printjobscheduling(array, array.length) }.to output('').to_stdout
      end
    end
  end
end