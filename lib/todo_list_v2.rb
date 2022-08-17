class TodoList
  def initialize
    @todo_list = []
    @completed = []
  end

  def add(todo) # todo is an instance of Todo
    @todo_list << todo.task
    # Returns nothing
  end

  def incomplete
    # Returns all non-done todos
    return @todo_list
  end

  def complete
    # Returns all complete todos
    #return ["DONE: Wash the car."]
    #map loop check for DONE return task if includes DONE
    @todo_list.each do |task| 
      if task.include?("DONE:")
        @completed << task
      end
    end
    return @completed
  end

  def give_up!
    # Marks all todos as complete
    return @todo_list
  end
end