describe Task do
  let(:task) { Task.new(title: "travel", description: "by sailboat", timestamp: "'2014-04-01 00:00:01'") }

  context "#initialize" do
    it "creates a Task object" do
      task.should be_an_instance_of Task
    end

    it "requires three parameters" do
      expect { Task.new }.to raise_error(ArgumentError)
    end

    it "requires default status to be incomplete" do
      expect(task.status).to eq "incomplete"
    end

  end
end
