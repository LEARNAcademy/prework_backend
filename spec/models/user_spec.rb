require 'rails_helper'
#Global variable for user.create
usercreate = User.create

RSpec.describe User, type: :model do

  #Presence validations.
  it "must have an email" do
    expect(usercreate.errors[:email]).to_not be_empty
  end

  it "must have an encrypted password" do
    expect(usercreate.errors[:encrypted_password]).to be_empty
  end

end
