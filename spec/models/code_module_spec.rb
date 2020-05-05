require 'rails_helper'

#Global variable for CodeModule.create
codemodule = CodeModule.create

RSpec.describe CodeModule, type: :model do

  #Relational model tests
  it { should belong_to(:user) }

  it { should belong_to(:topic) }
  
  it { should have_many(:lessons) }

  it { should have_many(:questions) }

  #Presence validation tests. 
  it "must have a lesson" do
    expect(codemodule.errors[:lesson]).to_not be_empty
  end

  it "must have a completed boolean value" do
    expect(codemodule.errors[:completed]).to be_empty
  end

  it "must have a user" do
    expect(codemodule.errors[:user_id]).to_not be_empty
  end

  #Tests for integer

  it{should validate_numericality_of(:user_id)}

  #Tests for length of values

  it{should validate_length_of(:lesson).is_at_least(3)}

  #Tests boolean value

  it {should allow_value(nil).for(:completed)}


end
