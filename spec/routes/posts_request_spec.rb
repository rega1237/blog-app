require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'Get page post #index' do
    before(:all) do
      @user = User.create(name: 'Rafael', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'My bio')
      @post = Post.create(author: @user, title: 'title', text: 'text')
      get "/users/#{@user.id}/posts"
    end

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders and get the placeholder text' do
      expect(response.body).to include 'Rafael'
    end
  end

  describe 'GET user page #show' do
    before(:all) do
      @user = User.create(name: 'Rafael', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'My bio')
      @post = Post.create(author: @user, title: 'title', text: 'text')
    end

    it 'is a success' do
      get "/users/#{@user.id}/posts/#{@post.id}"
      expect(response).to have_http_status(:ok)
    end

    it 'renders and get the placeholder text' do
      get "/users/#{@user.id}/posts/#{@post.id}"
      expect(response.body).to include 'Rafael'
    end
  end
end
