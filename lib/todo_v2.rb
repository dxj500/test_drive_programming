class Todo
  def initialize(task) # task is a string
    @task = task
  end

  def task
    # Returns the task as a string
    return @task
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
    @task = "DONE: #{@task}"
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
    if @task.include?("DONE")
      return true
    else
      return false
    end
  end
end