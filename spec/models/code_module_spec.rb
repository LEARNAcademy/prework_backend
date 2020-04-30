require 'rails_helper'
codemodule = CodeModule.create

RSpec.describe CodeModule, type: :model do

  #Presence validation tests. 
  it "must have a lesson" do
    expect(codemodule.errors[:lesson]).to_not be_empty
  end


  it "must have a completed boolean" do
    expect(codemodule.errors[:completed]).to_not be_empty
  end

  it "must have a user" do
    expect(codemodule.errors[:user_id]).to_not be_empty
  end

  # Validation for boolean
  it "Completed must be true or false" do
    codemoduleCompleteness = CodeModule.create completed:true
    expect(codemoduleCompleteness[:completed]).to be_in([true, false])
  end

  # Validations for strings
  it "Lesson must be a string" do
    codemoduleString = CodeModule.create lesson: "string"
    expect(codemoduleString[:lesson]).to be_a(String)
  end
  
end
