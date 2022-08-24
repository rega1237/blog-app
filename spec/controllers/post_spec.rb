require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
  @user = User.new(name: 'John Doe', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Canada.')
  @post = Post.new(author: @user, title: 'title', text: 'text')
  Comment.create(author: @user, post: @post, text: 'text1')
  Comment.create(author: @user, post: @post, text: 'text2')
  Comment.create(author: @user, post: @post, text: 'text3')
  Comment.create(author: @user, post: @post, text: 'text4')
  Comment.create(author: @user, post: @post, text: 'text5')
  Comment.create(author: @user, post: @post, text: 'text6')

  @user.save
  @post.save
  end

  context 'When testing the Posts class' do
    it 'should contain an author' do
      expect(@post.author).to eq(@user)
    end

    it 'should contain a title' do
      expect(@post.title).to eq('title')
    end

    it 'should contain a text' do
      expect(@post.text).to eq('text')
    end
  end
  # rubocop:disable Lint/UselessAssignment
  context 'When testing the Posts methods' do
    # rubocop:enable Lint/UselessAssignment
    it 'should return the lenght of comments in comments_counter' do
      expect(@post.most_recent_comments.length).to eq(5)
    end

    it 'should update post countersr' do
      expect(@user.posts_counter).to eq(1)
    end
  end

  context 'When testing Validations' do
    it 'should validate that title isn\'t empty' do
      @post.title = nil
      expect(@post).not_to be_valid
    end

    it 'should validate that title doesn\'t exceed 250 characters' do
      @post.title = 'a' * 260
      expect(@post).not_to be_valid
    end
  end
end
