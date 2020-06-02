require 'rails_helper'

#Global variable for CodeModule.create
codemodule = CodeModule.create

RSpec.describe CodeModule, type: :model do

  #Relational model tests
  it { should belong_to(:topic) }
  
  it { should have_many(:lessons) }

  it { should have_many(:questions).through(:lessons) }

  #Presence validation tests. 
  it "must have a lesson" do
    expect(codemodule.errors[:lesson]).to_not be_empty
  end

  it "must have a topic" do
    expect(codemodule.errors[:topic_id]).to_not be_empty
  end

  #Tests for integer
  it{should validate_numericality_of(:topic_id)}

  #Tests for length of values
  it{should validate_length_of(:lesson).is_at_least(3)}

   # Validations for uniqueness tests
   it { should validate_uniqueness_of(:lesson).ignoring_case_sensitivity }


end
