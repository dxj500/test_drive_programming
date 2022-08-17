{{PROBLEM}} Class Design Recipe

1. Describe the Problem
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface

class TaskList
  def initialize
    @task_list = []
  end

  def add_to_list(text) #text is a string representing the tasks todo and will produce a list of tasks todo
  end

  def task_list #list of todo tasks
  end

  def completed_tasks(text) #deletes a task from the list when complete
  end


  3. Create Examples as Tests

  #1 (blank list)
  new_task = TaskList.new
  new_task.add_to_list # => []

  #2 (add new entry)
  new_task = TaskList.new
  new_task.add_to_list("todo: walk the dog")
  new_task.task_list # => ["todo: walk the dog"]

  #3 (multiple entries)
  new_task - TaskList.new
  new_task.add_to_list("todo: walk the dog", "todo: feed the cat")
  new_task.task_list ["todo: walk the dog", "todo: feed the cat"]

  #4 (duplicates)
  new_task = TaskList.new
  new_task.add_to_list("todo: walk the dog") #already exists
  new_task.task_list []

  #5 (delete completed task)
  new_task = TaskList.new
  new_task.completed_tasks("todo walk the dog")
  new_task.task.list []

  #6 (delete multiple tasks)
  new_task = TaskList.new
  new_task.completed_tasks("todo walk the dog", "todo: feed the cat")
  new_task.task.list []



