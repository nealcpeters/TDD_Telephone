class Task
  attr_reader :status, :created_at

  def initialize(args)
    @status = "incomplete"
    @created_at = true
  end

end
