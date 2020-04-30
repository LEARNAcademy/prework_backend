require 'rails_helper'
# Global variable of Lesson
lesson = Lesson.create

RSpec.describe Lesson, type: :model do
  # Presence validation tests.
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

  # Boolean validations.
  it "must be a boolean value for completed" do
  lessonComplete = Lesson.create completed:true
  expect(lessonComplete[:completed]).to be_in([true,false])
  end

  # Integer validation
  it "must be a integer value for code_module_id" do
    lessonModID = Lesson.create code_module_id:2
    expect(lessonModID[:code_module_id]).to be_a(Numeric)
  end

  # Validations for strings
  it "Question must be a string" do
    lessonString = Lesson.create question: "string"
    expect(lessonString[:question]).to be_a(String)
  end
  it "Title must be a string" do
    lessonString = Lesson.create title: "string"
    expect(lessonString[:title]).to be_a(String)
  end

  # Validations for uniquness
  
  it { should validate_uniqueness_of(:title).ignoring_case_sensitivity }



end
