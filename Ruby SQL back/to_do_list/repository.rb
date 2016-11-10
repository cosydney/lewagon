
class Repository
  # attr_reader :tasks

  def initialize
    @tasks = []
  end
  # => Write
  def add(task)
    @tasks << task
  end
  # => better than attr_reader for layer safety reasons
  def all
    @tasks
  end
  # => read
  def find(index)
    @tasks[index]
  end
  # => Delete
  def remove(index)
    @tasks.delete_at(index)
  end
end