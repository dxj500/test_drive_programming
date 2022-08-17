require "todo_list_v2.rb"
require "todo_v2.rb"

RSpec.describe "todo integration" do
 
  context "after adding new todo activities" do
    it "lists the todo activities added" do
      todo_list = TodoList.new
      task = Todo.new("walk the dog")
      todo_list.add(task)
      expect(todo_list.incomplete).to eq ["walk the dog"]
    end
  end

  context "When a todo is complete" do
    it "returns a list of complete tasks" do
      todo_list = TodoList.new
      task = Todo.new("Wash the car.")
      task.mark_done!
      todo_list.add(task)
      #binding.irb
      expect(todo_list.complete).to eq ["DONE: Wash the car."]
    end

  end

  context "when multiple entries are added" do
    it "returns only the completed tasks" do
      todo_list = TodoList.new
      task_1 = Todo.new("Wash the car.")
      task_2 = Todo.new("Walk the dog")
      task_1.mark_done!
      task_2.mark_done!
      todo_list.add(task_1)
      todo_list.add(task_2)
      expect(todo_list.complete).to eq ["DONE: Wash the car.", "DONE: Walk the dog"]
    end

    it "returns only the one completed tasks" do
      todo_list = TodoList.new
      task_1 = Todo.new("Wash the car.")
      task_2 = Todo.new("Walk the dog")
      task_1.mark_done!
      todo_list.add(task_1)
      todo_list.add(task_2)
      expect(todo_list.complete).to eq ["DONE: Wash the car."]
    end
  end

  context "when all jobs are completed" do
    it "returns all tasks in a list as completed" do
      todo_list = TodoList.new
      task_1 = Todo.new("Wash the car.")
      task_2 = Todo.new("Walk the dog")
      task_1.mark_done!
      task_2.mark_done!
      todo_list.add(task_1)
      todo_list.add(task_2)
      expect(todo_list.give_up!).to eq ["DONE: Wash the car.", "DONE: Walk the dog"]
    end
  end


end