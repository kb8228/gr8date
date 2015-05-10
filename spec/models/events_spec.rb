require "rails_helper"

RSpec.describe Event do 

  it "is invalid without an event name" do
    event = FactoryGirl.build_stubbed(:event, event_name: nil, event_date: "5-20-15", event_time: "8:00 PM", venue_name: "Roxy", address: "123 Main St Santa Monica CA 90041", phone: "310-555-1942", category: "music" , venue_url: "www.roxy.com")
    expect(event).to be_invalid
  end

  it "is invalid without an event date" do
    event = FactoryGirl.build_stubbed(:event, event_name: nil, event_date: nil, event_time: "8:00 PM", venue_name: "Roxy", address: "123 Main St Santa Monica CA 90041", phone: "310-555-1942", category: "music" , venue_url: "www.roxy.com")
    expect(event).to be_invalid
  end

  it "is invalid without an event time" do
    event = FactoryGirl.build_stubbed(:event, event_name: nil, event_date: "5-20-15", event_time: nil, venue_name: "Roxy", address: "123 Main St Santa Monica CA 90041", phone: "310-555-1942", category: "music" , venue_url: "www.roxy.com")
    expect(event).to be_invalid
  end

  it "is invalid without a venue name" do
    event = FactoryGirl.build_stubbed(:event, event_name: nil, event_date: "5-20-15", event_time: "8:00 PM", venue_name: nil, address: "123 Main St Santa Monica CA 90041", phone: "310-555-1942", category: "music" , venue_url: "www.roxy.com")
    expect(event).to be_invalid
  end

  it "is invalid without an address" do
    event = FactoryGirl.build_stubbed(:event, event_name: nil, event_date: "5-20-15", event_time: "8:00 PM", venue_name: "Roxy", address: nil, phone: "310-555-1942", category: "music" , venue_url: "www.roxy.com")
    expect(event).to be_invalid
  end

  it "is invalid without a phone number" do
    event = FactoryGirl.build_stubbed(:event, event_name: nil, event_date: "5-20-15", event_time: "8:00 PM", venue_name: "Roxy", address: "123 Main St Santa Monica CA 90041", phone: nil, category: "music" , venue_url: "www.roxy.com")
    expect(event).to be_invalid
  end

  it "is invalid without an event category" do
    event = FactoryGirl.build_stubbed(:event, event_name: nil, event_date: "5-20-15", event_time: "8:00 PM", venue_name: "Roxy", address: "123 Main St Santa Monica CA 90041", phone: "310-555-1942", category: nil , venue_url: "www.roxy.com")
    expect(event).to be_invalid
  end

  it "is invalid without a venue url" do
    event = FactoryGirl.build_stubbed(:event, event_name: nil, event_date: "5-20-15", event_time: "8:00 PM", venue_name: "Roxy", address: "123 Main St Santa Monica CA 90041", phone: "310-555-1942", category: "music" , venue_url: nil)
    expect(event).to be_invalid
  end

end
