require_relative "view"
require_relative "task"

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def fetch_and_print_tasks
    @view.print_tasks(@repository.all)
  end

  def add_task
    description = @view.get_new_task_description
    @repository.add(Task.new(description))
  end

  def remove_task
    index = @view.get_task_index_to_remove
    @repository.remove(index)
  end

  def mark_task_as_done
    index = @view.get_task_index_to_mark_as_done
    task = @repository.find(index)
    task.mark_as_done
  end
end
require_relative 'controller'

class Router
  def run(repository)
    @controller = Controller.new(repository)
    loop do
      @controller.fetch_and_print_tasks
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_actions
    puts "\n---"
    puts 'What do you want to do?'
    puts '1 - Add a new task'
    puts '2 - Mark a task as done'
    puts '3 - Remove a task'
    puts '---'
  end

  def dispatch(action)
    case action
    when 1 then @controller.add_task
    when 2 then @controller.mark_task_as_done
    when 3 then @controller.remove_task
    end
  end
end
START THE PROGRAM

require_relative "tasks_repository"
require_relative "router"

repository = TasksRepository.new
Router.new.run(repository)
#Get the code on GitHub! lewagon/oop-todolist

