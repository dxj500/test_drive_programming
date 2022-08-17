class TaskList
  
  def initialize
    @task_list = []
  end

  def add_to_list(task)
    @task_list << task
    @task_list.uniq!
    return @task_list
  end

  def task_list
    return @task_list
    #p @task_list
  end

  def completed_tasks(task_to_be_deleted)
    p @task_list
    task_delete = @task_list.find { |t| t[] = task_to_be_deleted }
     return @task_list.delete(task_delete)

  end
end


