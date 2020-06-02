require 'rails_helper'

#Global variable for CodeModule.create
hint = Hint.create

RSpec.describe Hint, type: :model do

  #Relational model test
  it { should belong_to(:question) }

  #Presence validation tests. 
  it "must have a title" do
    expect(hint.errors[:title]).to_not be_empty
  end

  it "must have content" do
    expect(hint.errors[:content]).to_not be_empty
  end

  #Tests for integer
  it{should validate_numericality_of(:question_id)}


  #Tests for length of values
  it{should validate_length_of(:title).is_at_least(3)}

  #Tests for length of values
  it{should validate_length_of(:content).is_at_least(3)}

end
