require 'rails_helper'

#Global variable for create.
resourceCreate = Resource.create

#Global variable for integer checking.
resourceInt = Resource.create question_id:42

RSpec.describe Resource, type: :model do

  #Presence tests
  it "must have a name" do
    expect(resourceCreate.errors[:name]).to_not be_empty
  end

  it "must have a link" do
    expect(resourceCreate.errors[:link]).to_not be_empty
  end

  it "must have a question_id foreign key" do
    expect(resourceCreate.errors[:question_id]).to_not be_empty
  end

  #Validations for integer

  it "must be a numeric value for id" do
    expect(resourceInt[:question_id]).to be_a(Numeric)
  end

  it { should validate_numericality_of(:question_id) }

  it "must validate question_id as a numeric value" do
    resourceInt = Resource.create question_id:"potato"
    expect(resourceInt.errors[:question_id]).to_not be_empty
  end

#Length validations on string and text utilizing shoulda-matchers.
#This test validates that the length of name is atleast 3 characters long.
it {should validate_length_of(:name).is_at_least(3)}

#This test validates that the length of link is atleast 3 characters long.
it {should validate_length_of(:link).is_at_least(3)}

end

# Relational testing

RSpec.describe Resource, type: :model do
  
  it {should belong_to(:question)}

end