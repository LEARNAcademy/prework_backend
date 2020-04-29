require 'rails_helper'
codemodule = CodeModule.create

RSpec.describe CodeModule, type: :model do

  #Presence validation tests. 
  it "must have a lesson" do
    expect(codemodule.errors[:lesson]).to_not be_empty
  end

  it "must have a progress" do
    expect(codemodule.errors[:progress]).to_not be_empty
  end

  it "must have a completed boolean" do
    expect(codemodule.errors[:completed]).to_not be_empty
  end

  it "must have a user" do
    expect(codemodule.errors[:user_id]).to_not be_empty
  end
end
