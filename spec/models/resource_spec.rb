require 'rails_helper'

#Global variable for create.
resourceCreate = Resource.create

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

end
