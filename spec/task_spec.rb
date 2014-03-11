describe Task do
  let(:task) { Task.new(title: "travel", description: "by sailboat", status: "later", timestamp: "'2014-04-01 00:00:01'") }

  context "#initialize" do
    it "creates a Task object" do
      task.should be_an_instance_of Task
    end

    it "requires four parameters" do
      expect { Task.new }.to raise_error(ArgumentError)
    end
  end
end
