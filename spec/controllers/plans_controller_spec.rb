require 'rails_helper'

RSpec.describe PlansController, :type => :controller do
  before(:each) do
    @user = User.create(name: "Layla")
    @plan = Plan.create(date: "2015-05-04", time: 1000, location: "Santa Monica", user_id:@user.id)
    @plan_item = Plan.create(date: "2015-05-04", time: 1000, location: "Santa Monica", user_id:@user.id)


  end

  # describe "GET #index " do
  #   before :each do

  #     get :index
  #   end

  #   it "renders the index template" do
  #     expect(response).to render_template("index") 
  #   end
  #   it "response should be a success" do
  #     # expect(response).to be_success
  #     expect(response).to have_http_status(200)
  #   end
  #   it "assigns @plans to include plans" do
  #     expect(assigns(:plans)).to include(@plan1, @plan2)
  #   end
  # end
  



  # describe "GET #show" do
  #   before :each do
  #     get :show, id: @plan.id
  #   end
  #   it "renders the show template" do
  #     expect(response).to have_http_status(200)
  #     expect(response).to render_template :show
  #   end

  #   it "assigns an plan to @plan" do
  #     expect(assigns(:plan)).to eq(@plan)
  #   end
  # end



  # describe "GET #new" do
  #   before do
  #     get :new
  #   end

  #   it "renders the new template with status 200 " do
  #     expect(response).to render_template :new
  #     expect(response).to have_http_status(200)
  #   end


  #   it "is not persisted" do
  #     expect{Plan.new}.to change(Plan, :count).by(0)
  #   end
  # end


  # describe "POST #create" do
  #   it "persists an plan to the DB" do
  #     expect {Plan.create}.to change(Plan, :count).by(0)
  #   end
  # end


  describe "DELETE #destroy" do
    before do
      get :index
    end

    it "deletes an plan from the DB" do
      expect{delete :destroy, id: @plan_item.id}.to change(Plan, :count).by(-1)
    end

    it "redirects to index page" do
      expect(response).to render_template :index
    end
  end
end












