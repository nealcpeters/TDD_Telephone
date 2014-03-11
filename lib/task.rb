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

  def title
    'travel'
  end

end
