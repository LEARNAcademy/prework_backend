require 'rails_helper'

#Declared global variable for create.
questioncreate = Question.create

RSpec.describe Question, type: :model do
  it "must have content" do
    expect(questioncreate.errors[:content]).to_not be_empty
  end

  it "must have an answer" do
    expect(questioncreate.errors[:answer]).to_not be_empty
  end

  it "must have the existance of a correct column" do
    expect(questioncreate.errors[:correct]).to_not be_empty
  end

  it "must check if its completed" do
    expect(questioncreate.errors[:completed]).to_not be_empty
  end

  it "must have a resource" do
    expect(questioncreate.errors[:resources]).to_not be_empty
  end

  it "must be attached to a lesson identifier" do
    expect(questioncreate.errors[:lesson_id]).to_not be_empty
  end

  #Boolean tests

  it "must have correct be a boolean value" do
    questioncorrect = Question.create correct:true
    expect(questioncorrect[:correct]).to be_in([true, false])
  end

  it "must have completed be a boolean value" do
    questionComplete = Question.create completed:true
    expect(questionComplete[:completed]).to be_in([true, false])
  end

  #Tests for integer.
  it {should validate_numericality_of(:lesson_id)}
  
end

#Relational model testing
RSpec.describe Question, type: :model do

  it {should belong_to(:lesson)}

  it {should belong_to(:code_module)}

  it {should have_many(:resources)}

end
