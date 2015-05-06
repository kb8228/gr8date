require 'rails_helper'

RSpec.describe Plan, type: :model do
    it "should have a date" do
        plan = FactoryGirl.build_stubbed(:plan, date: nil)
        expect(plan).to be_invalid
    end

    it "should have a time" do
        plan = FactoryGirl.build_stubbed(:plan, time: nil)
        expect(plan).to be_invalid
    end

    it "should have a location" do
        plan = FactoryGirl.build_stubbed(:plan, location: nil)
        expect(plan).to be_invalid
    end

    it "should have a user" do
        plan = FactoryGirl.build_stubbed(:plan, user_id: nil)
        expect(plan).to be_invalid
    end
end