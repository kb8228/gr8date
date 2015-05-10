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
    user = FactoryGirl.build(:user, password: nil, password_confirmation: nil)
    expect(user).to be_invalid
  end 
  
  it 'should have a password that is not an empty string' do
    user1 = FactoryGirl.build(:user, password: "", password_confirmation: "")
    expect(user1).to be_invalid
  end  

  it 'should have a correctly formatted password' do
    user2 = FactoryGirl.build(:user)
    user3 = FactoryGirl.build(:user, password: "passw", password_confirmation: "passw")
    user4 = FactoryGirl.build(:user, password: "passwordpasswordpassword", password_confirmation: "passwordpasswordpassword")
    expect(user2).to be_valid
    expect(user3).to be_invalid
    expect(user4).to be_invalid
  end  

  describe 'instance methods' do
    before do
      @user5 = FactoryGirl.create(:user)
    end
    describe '#password=' do
      it 'creates a password digest' do
        expect(@user5.password_digest).not_to be nil
      end
    end

    describe 'authenticate' do
      before do
        @user6 = FactoryGirl.create(:user, email: "jimmy@example.com")
      end
      it "authenticates with valid password" do
        expect(@user6.authenticate("password")).to eq(@user6)
      end
      it "declines authentication with invalid password" do
        expect(@user6.authenticate("invalid_pw")).to eq(false)
      end
    end
  end

end
