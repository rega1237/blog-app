require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET users page #index' do
    before(:each) do
      get '/users'
    end

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the correct template' do
      expect(response).to render_template('index')
    end

    it 'renders and get the placeholder text' do
      expect(response.body).to include 'Create new post'
    end
  end

  describe 'GET user page #show' do
    before(:all) do
      @user = User.create(name: 'Rafael', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'My bio')
    end

    it 'is a success' do
      get "/users/#{@user.id}"
      expect(response).to have_http_status(:ok)
    end

    it 'renders the correct template' do
      get "/users/#{@user.id}"
      expect(response).to render_template('show')
    end

    it 'renders and get the placeholder text' do
      get "/users/#{@user.id}"
      expect(response.body).to include 'Rafael'
    end
  end
end
