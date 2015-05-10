require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  before :each do
    @user1 = User.create(name: "Layla", email: "layla@example.com", password: "password", password_confirmation: "password")
    @user2 = User.create(name: "Ian", email: "ian@example.com", password: "password", password_confirmation: "password")
  end

  describe "GET #index" do
    before do
      get :index
    end

    it "should render the correct page with status 200" do
      expect(response).to render_template("index")
      expect(response).to have_http_status(200)
    end

    it "assigns @users to include users" do
      expect(assigns(:users)).to include(@user1, @user2)
    end

  end

  describe "GET #show" do
    before do
      get :show, id: @user1.id
    end

    it 'should render the show template with status code 200' do
      expect(response).to render_template :show
      expect(response).to have_http_status(200)
    end

    it 'assigns user to @user' do
      expect(assigns(:user)).to eq(@user1)
    end
  end

  describe "GET #new" do
    before do
      get :new
    end

    it 'renders the new template with status code 200' do
      expect(response).to render_template :new
      expect(response).to have_http_status(200)
    end
    #it 'makes a new user'
    it 'is not persistent' do
      expect{User.new}.to change(User, :count).by(0)
    end
  end

  describe "POST #create" do
    it 'creates a new persistent user' do
      expect{User.create(name: "Lilu", email: "lilu@example.com", password: "password", password_confirmation: "password")}.to change(User, :count).by(1)
    end
  end

  describe "GET #edit" do
    before do
      get :edit, id: @user1.id
    end
    it 'renders the edit template with status code 200' do
      expect(response).to render_template :edit
      expect(response).to have_http_status(200)
    end
  end

  describe "PUT/PATCH #update" do
    before do
      @user5 = User.create(name: "Maria", email: "maria@example.com", password: "password", password_confirmation: "password")
      patch :update, id: @user5.id, user: {email: "mary@example.com"}
      @user5.reload
    end

    it 'makes persistent change in user record' do
      expect(@user5.email).to eq("mary@example.com")
    end

    it 'redirects to user show page' do
      expect(response).to redirect_to user_path
    end
  end

  describe "DELETE #destroy" do
    before do
      get :index
    end
    it 'deletes the user record' do
      expect{delete :destroy, id: @user1.id}.to change(User, :count).by(-1)
    end

    it 'redirects to root page' do
      delete :destroy, id: @user1.id
      expect(response).to redirect_to root_path
    end
  end
end