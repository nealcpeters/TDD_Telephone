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

    it "requires should have a method #mark_as_complete! which sets its status to complete" do
      task.mark_as_complete!
      expect(task.status).to eq "complete"
    end

    it "should have a method #mark_as_incomplete! which sets its status to incomplete" do
      task.mark_as_incomplete!
      expect(task.status).to eq "incomplete"
    end

    it "should have a method #complete? which returns a boolean indicating whether or not it has been completed" do
      expect(task.complete?).to eq false || true
    end

  end
end

describe Todo do
  let(:todo) {Todo.new(title: "Travel List")}

  context "#initialize" do
    it "a todo list should have a title" do
      expect(todo.title).to eq "Travel List"
    end

    it "A todo list has many tasks" do
      todo.tasks << Task.new(title: "blah") << Task.new(title: "Place Holder")
      expect(todo.tasks.length).to eq 2
    end

    it "Tasks can be added to the todo list using a method #add_task(task)" do
      todo.add_task(Task.new(title: "blah"))
      expect(todo.tasks.length).to eq 3
    end

  end
end
