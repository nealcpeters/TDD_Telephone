class Task
  attr_reader :created_at
  attr_accessor :status

  def initialize(args)
    @status = "incomplete"
    @created_at = true
  end

  def mark_as_complete!
    self.status = true
  end

end
