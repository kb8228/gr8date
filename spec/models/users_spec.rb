
require 'rails_helper'

RSpec.describe User, type: :model do

  it 'should have a name' do
    user = FactoryGirl.build_stubbed(:user, name: nil)
    expect(user).to be_invalid
  end

  it 'should have an email' do
    user = FactoryGirl.build_stubbed(:user, email: nil)
    expect(user).to be_invalid
  end

  it 'should have a correctly formatted email' do
    user1 = FactoryGirl.build_stubbed(:user)
    user2 = FactoryGirl.build_stubbed(:user, email: "nick2example")
    expect(user1).to be_valid
    expect(user2).to be_invalid
  end

  it 'should have a unique email' do
    user1 = FactoryGirl.create(:user, email: "ksusha@example.com")
    user2 = FactoryGirl.build_stubbed(:user, email: "ksusha@example.com")
    expect(user1).to be_valid
    expect(user2).to be_invalid
  end

  it 'should have a password' do
    user = FactoryGirl.build_stubbed(:user, password: nil)
    expect(user).to be_invalid
  end 
  
  it 'should have a password that is not an empty string' do
    user = FactoryGirl.build_stubbed(:user, password: "")
    expect(user).to be_invalid
  end  

  it 'should have a correctly formatted password' do
    user1 = FactoryGirl.build_stubbed(:user, password: "password")
    user2 = FactoryGirl.build_stubbed(:user, password: "passw")
    user3 = FactoryGirl.build_stubbed(:user, password: "passwordpasswordpassword")
    expect(user1).to be_valid
    expect(user2).to be_invalid
    expect(user3).to be_invalid
  end  

end

