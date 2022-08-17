#require "./lib/todo.rb"

class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo) # todo is an instance of Todo
    @todo_list << todo.task
  end

  def incomplete
    #return @todo_list
    return @todo_list.select { |task| task.done? == false }
  end

  def complete
    # Returns all complete todos
    # return @todo_list.(todo.done?)
    return @todo_list.select { |task| task.done? == true }
  end

  def give_up!
    # Marks all todos as complete
    @todo_list.select { |task| task.mark_done! }
  end
end