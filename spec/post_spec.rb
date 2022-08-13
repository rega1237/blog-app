require 'rails_helper'

RSpec.describe Post do
  let(:user) { User.new(name: 'John Doe', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Canada.') }
  let(:post) { Post.new(author: user, title: 'title', text: 'text') }

  before { post.save }

  context 'When testing the Posts class' do
    it 'should contain an author' do
      expect(post.author).to eq(user)
    end

    it 'should contain a title' do
      expect(post.title).to eq('title')
    end

    it 'should contain a text' do
      expect(post.text).to eq('text')
    end
  end
  # rubocop:disable Lint/UselessAssignment
  context 'When testing the Posts methods' do
    user1 = User.create(name: 'John Doe', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                        bio: 'Teacher from Canada.')
    post1 = Post.create(author: user1, title: 'title', text: 'text')
    comment_one = Comment.create(author: user1, post: post1, text: 'text1')
    comment_two = Comment.create(author: user1, post: post1, text: 'text2')
    comment_three = Comment.create(author: user1, post: post1, text: 'text3')
    comment_four = Comment.create(author: user1, post: post1, text: 'text4')
    comment_five = Comment.create(author: user1, post: post1, text: 'text5')
    comment_six = Comment.create(author: user1, post: post1, text: 'text6')
    # rubocop:enable Lint/UselessAssignment
    it 'should return the lenght of comments in comments_counter' do
      expect(post1.most_recent_comments.length).to eq(5)
    end

    it 'should update post countersr' do
      post1.save
      expect(user1.posts_counter).to eq(1)
    end
  end

  context 'When testing Validations' do
    it 'should validate that title isn\'t empty' do
      post.title = nil
      expect(post).not_to be_valid
    end

    it 'should validate that title doesn\'t exceed 250 characters' do
      post.title = 'a' * 260
      expect(post).not_to be_valid
    end
  end
end
