require "todo_list_v2.rb"

RSpec.describe "TodoList" do
  context "initially" do
    it "has an empty list" do
      todo_list = TodoList.new
      expect(todo_list.incomplete).to eq []
    end
  end
end