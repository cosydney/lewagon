require_relative "repository"
# require_relative "router"
require_relative "task"
require_relative "view"

task = Task.new("Win the final")
task2 = Task.new("Finish lewagon")

repo = Repository.new
repo.add(task)
repo.add(task2)

tasks = repo.all


view = View.new
view.print_tasks(tasks)

# repository = TasksRepository.new
# Router.new.run(repository)