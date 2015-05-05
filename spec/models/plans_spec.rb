require 'rails_helper'

RSpec.describe Plan, type: :model do
    it "should have a date" do
        plan = FactoryGirl.create(:plan, date: nil)
        p plan
        expect(plan).to be_invalid
    end

    it "should have a time" do
        plan = FactoryGirl.create(:plan, time: nil)
        p plan
        expect(plan).to be_invalid
    end

    it "should have a location" do
        plan = FactoryGirl.create(:plan, location: nil)
        p plan
        expect(plan).to be_invalid
    end

    it "should have a user" do
        plan = FactoryGirl.create(:plan, user_id: nil)
        p plan
        expect(plan).to be_invalid
    end
end