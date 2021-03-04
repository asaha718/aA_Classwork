require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET #index" do 
    it "renders all users" do
      get :index

      expect(response).to render_template(:index)
    end
  end

  describe "GET #new" do
    it "renders new user template" do
      get :new

      expect(response).to render_template(:new)
    end
  end

  # describe "GET #show" do
  #   it "renders a specific user" do
  #     User.create(username: 'mark', password:'123456')
  #     get :show, id: 1

  #     expect(response).to render_template(:show)
  #   end
  # end

  describe "POST #create" do
    let(:valid_params) { {user:  {username: 'mark', password: '123456'}}}
    let(:user) {User.find_by(username: 'mark')}
    before :each do
      post :create, params: valid_params
    end

    it "creates user with valid params" do
      expect(User.last.username).to eq("mark")
    end

    it "logs in the user" do
      expect(session[:session_token]).to eq(user.session_token)
    end

    it "redirects to user show page" do
      expect(response).to redirect_to(user_url(user))

    end
  end
end
