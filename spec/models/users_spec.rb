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
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.build_stubbed(:user)
    expect(user1).to be_valid
    expect(user2).to be_invalid
  end

  

end
