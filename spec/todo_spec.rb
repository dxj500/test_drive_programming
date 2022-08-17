require "todo_v2.rb"

RSpec.describe "Todo" do
  context "when a new task is to added" do
    it "returns the task as a string" do
      new_task = Todo.new("walk the dog")
      expect(new_task.task).to eq "walk the dog"
    end
  end

  context "when a task is completed" do
    it "is marked as DONE" do
      new_task = Todo.new("Wash the car.")
      expect(new_task.mark_done!).to eq "DONE: Wash the car."
    end
  end

  context "when a task is completed" do
    it "returns true" do
      new_task = Todo.new("Wash the car.")
      new_task.mark_done!
      expect(new_task.done?).to eq true
    end
  end

  context "when a task is not completed" do
    it "returns false" do
      new_task = Todo.new("Wash the car.")
      expect(new_task.done?).to eq false
    end
  end
end

