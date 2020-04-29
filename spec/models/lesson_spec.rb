require 'rails_helper'
# Global variable of Lesson
lesson = Lesson.create

RSpec.describe Lesson, type: :model do
  #Presence validation tests.
  it "must have content" do
    expect(lesson.errors[:content]).to_not be_empty
  end
  it "must have a question" do
    expect(lesson.errors[:question]).to_not be_empty
  end
  it "must have a completed boolean" do
    expect(lesson.errors[:completed]).to_not be_empty
  end
  it "must have a module" do
    expect(lesson.errors[:code_module_id]).to_not be_empty
  end
  it "must have a title" do
    expect(lesson.errors[:title]).to_not be_empty
  end

end
