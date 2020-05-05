require 'rails_helper'

#Global variable for Topic.create
topiccreate = Topic.create

RSpec.describe Topic, type: :model do

  #Relational model test
  it { should have_many(:code_modules) }

  #Presence validation test 
  it "must have a title" do
    expect(topiccreate.errors[:title]).to_not be_empty
  end

  #Tests for length of values
  it { should validate_length_of(:title).is_at_least(3) }

end
