require 'rails_helper'

RSpec.describe EventsController, :type => :controller do
  before(:each) do
    @event1 = Event.create( {
      event_name: "The LAF Supper", 
      event_date: "5-2-15",
      event_time: "8:30 PM",
      venue_name: "Santa Monica Playhouse",
      address: "1211 4th St, Santa Monica, CA 90401",
      phone: "310-394-9779",
      category: "theater",
      venue_url: "http://santamonicaplayhouse.com"
    })

    @event2 = Event.create( {
      event_name: "Almost Perfect",
      event_date: "5/9/15", 
      event_time: "7:30 PM",
      venue_name: "Santa Monica Playhouse",
      address: "1211 4th St, Santa Monica, CA 90401",
      phone: "310-394-9779",
      category: "theater", 
      venue_url: "http://santamonicaplayhouse.com"
    })
  end

  describe "GET #index" do
    before :each do
      get :index
    end

    it "renders the index template" do
      expect(response).to render_template("index")
    end

    it "response should be a success" do
      expect(response).to be_success
    end

    # it "assigns @events to include events" do
    #   expect(assigns(:events)).to include(@event1, @event2)
    # end
  end

  describe "GET #show" do
    before :each do
      get :show, id: @event1.id
    end

    it "renders the show template" do
      expect(response).to have_http_status(200)
      expect(response).to render_template :show
    end

    it "assigns an event to @event" do
      expect(assigns(:event)).to eq(@event1)
    end

  end

end


































