require "tracking_tasks.rb"

RSpec.describe "TaskList" do

  context "with no tasks" do
    it "has an empty list" do
    new_task = TaskList.new
    result = new_task.task_list
    expect(result).to eq []
  end
end

  context "given a task todo" do
    it "add the task to the list" do
      new_task = TaskList.new
      result = new_task.add_to_list("todo: walk the dog")
      expect(result).to eq ["todo: walk the dog"]
    end
  end

  context "given multiple tasks todo" do
    it "adds all the new tasks to the list" do
      new_task = TaskList.new
      new_task.add_to_list("todo: walk the dog")
      new_task.add_to_list("todo: feed the cat")
      expect(new_task.task_list).to eq ["todo: walk the dog", "todo: feed the cat"]
    end
  end

  context "given a duplicate task" do
    it "does not add the entry to the list" do
      new_task = TaskList.new
      new_task.add_to_list("todo: walk the dog")
      new_task.add_to_list("todo: walk the dog")
      expect(new_task.task_list).to eq ["todo: walk the dog"]
    end
  end

  # context "given a completed task" do
  #   it "deletes the task from the list" do
  #     new_task = TaskList.new
  #     new_task.add_to_list("todo: walk the dog")
  #     result = new_task.completed_tasks("todo: walk the dog")
  #     expect(result).to eq []
  #   end
  # end

  # context "given multiple completed tasks" do
  #   it "deletes all the completed tasks" do
  #     new_task = TaskList.new
  #     result = new_task.completed_tasks("todo: walk the dog", "todo: feed the cat")
  #     expect(result).to eq []
  #   end
  # end


end
