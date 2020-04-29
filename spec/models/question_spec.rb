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
  
end
