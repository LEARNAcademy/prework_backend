require 'rails_helper'
# Global variable of Lesson
lessonCreate = Lesson.create

RSpec.describe Lesson, type: :model do
  #Relational model tests

  it {should belong_to(:code_module)}

  it {should have_many(:questions)}

  #Check if column exists
  
  it "must have a question" do
    expect(lessonCreate.errors[:question]).to be_empty
  end
  
  # Presence validation tests.  
  it "must have content" do
    expect(lessonCreate.errors[:content]).to_not be_empty
  end

  it "must have a completed boolean" do
    expect(lessonCreate.errors[:completed]).to be_empty
  end

  it "must have a module" do
    expect(lessonCreate.errors[:code_module_id]).to_not be_empty
  end

  it "must have a title" do
    expect(lessonCreate.errors[:title]).to_not be_empty
  end

  # Boolean validations tests.
  it "must be a boolean value for completed" do
  lessonComplete = Lesson.create completed:false
  expect(lessonComplete[:completed]).to be_in([true,false])
  end

  it {should allow_value(true).for(:completed)}

  # Integer validation tests
  it "must be a integer value for code_module_id" do
    lessonModID = Lesson.create code_module_id:2
    expect(lessonModID[:code_module_id]).to be_a(Numeric)
  end

  it {should validate_numericality_of(:code_module_id)}

  # Validations for strings tests
  it "Question must be a string" do
    lessonString = Lesson.create question: "string"
    expect(lessonString[:question]).to be_a(String)
  end
  it "Title must be a string" do
    lessonString = Lesson.create title: "string"
    expect(lessonString[:title]).to be_a(String)
  end

  # Validations for uniqueness tests
  it { should validate_uniqueness_of(:title).ignoring_case_sensitivity }

  # Validations for length tests
  it {should validate_length_of(:title).is_at_least(3)}

end
