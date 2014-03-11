describe Task do
  let(:task) { Task.new(title: "travel", description: "by sailboat") }

  context "#initialize" do
    it "creates a Task object" do
      task.should be_an_instance_of Task
    end

    it "requires parameters" do
      expect { Task.new }.to raise_error(ArgumentError)
    end

    it "requires default status to be incomplete" do
      expect(task.status).to eq "incomplete"
    end

    it "requires created_at timestamp should be automatically set on initialization" do
      expect(task.created_at).to eq true
    end

  end
end
