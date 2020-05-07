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

  it "must have a last question completed" do
    expect(usercreate.errors[:last_q]).to be_empty
  end

  #Tests for password and creation
  it 'can be created' do
    user = User.create(email: "test@test.test", password: "asdfasdf", password_confirmation: "asdfasdf")
    expect(user).to be_valid
  end

  it 'must have a password that is six characters long' do
      user = User.create(email: "test@test.test", password: "not6", password_confirmation: "not6")
      expect(user).to_not be_valid
    end

end
