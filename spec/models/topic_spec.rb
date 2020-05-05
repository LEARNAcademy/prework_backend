require 'rails_helper'

#Global variable for Topic.create
topicCreate = Topic.create

RSpec.describe Topic, type: :model do

  #Relational model test
  it { should have_many(:code_modules) }

  #Test for presence
  it "must have a title" do
    expect(topicCreate.errors[:title]).to_not be_empty
  end

  #Test for string value
  it "must have a title that is a string type" do
    topicString = Topic.create title: "string"
    expect(topicString[:title]).to be_a(String)
  end

  #Test for length of values
  it { should validate_length_of(:title).is_at_least(3) }

  # Validations for uniqueness tests
  it { should validate_uniqueness_of(:title).ignoring_case_sensitivity }

end
