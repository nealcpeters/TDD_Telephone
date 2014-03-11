class Task
  attr_reader :created_at
  attr_accessor :status

  def initialize(args)
    @status = "incomplete"
    @created_at = true
  end

  def mark_as_complete!
    self.status = "complete"
  end

  def mark_as_incomplete!
    self.status = "incomplete"
  end

  def complete?
    @status == "incomplete"
  end

end

class Todo
  attr_reader :title
  attr_accessor :tasks

  def initialize(args)
    @title = args[:title]
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

end
