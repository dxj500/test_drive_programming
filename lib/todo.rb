class Todo
  def initialize(task) # task is a string
    @task = task
    @done = false
  end

  def task
    return @task
  end

  def mark_done!
    # Marks the todo as done
    # @task = "DONE: #{@task}"
    # Returns nothing
    @done = true
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
    # if mark_done!
    #   return true
    # else
    #   return false
    return @done
  end
end