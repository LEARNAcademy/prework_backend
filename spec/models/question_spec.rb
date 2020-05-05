require 'rails_helper'

#Declared global variable for create.
questionCreate = Question.create

RSpec.describe Question, type: :model do

  #Relational model testing

  it {should belong_to(:lesson)}

  it {should belong_to(:code_module)}

  it {should have_many(:resources)}

    #Check if column exists
    it "can have an img_src" do
      expect(questionCreate.errors[:img_src]).to be_empty
    end

   #Test for optional columns
  it "allows an empty resource" do
    expect(questionCreate.errors[:resources]).to be_empty
  end

  #Presence validation testing
  it "must have content" do
    expect(questionCreate.errors[:content]).to_not be_empty
  end

  it "must have an answer" do
    expect(questionCreate.errors[:answer]).to_not be_empty
  end

  it "must have the existance of a correct column" do
    expect(questionCreate.errors[:correct]).to_not be_empty
  end

  it "must check if its completed" do
    expect(questionCreate.errors[:completed]).to_not be_empty
  end

  it "must be attached to a lesson identifier" do
    expect(questionCreate.errors[:lesson_id]).to_not be_empty
  end

  #Boolean tests

  it "must have correct be a boolean value" do
    questionCorrect = Question.create correct:true
    expect(questionCorrect[:correct]).to be_in([true, false])
  end

  it "must have completed be a boolean value" do
    questionComplete = Question.create completed:true
    expect(questionComplete[:completed]).to be_in([true, false])
  end

  it {should allow_value(true).for(:correct)}

  it {should allow_value(true).for(:completed)}

  #Tests for integer.
  it {should validate_numericality_of(:lesson_id)}

  it {should validate_numericality_of(:code_module_id)}

  #Tests for length
  it {should validate_length_of(:content).is_at_least(3)}

  it {should validate_length_of(:answer).is_at_least(3)}
  
  
end