require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @user = User.new(name: 'name', photo: 'photo', bio: 'bio')
    @post = Post.new(author: @user, title: 'title', text: 'post text')
    @comment = Comment.new(author: @user, post: @post, text: 'comment text')

    @user.save
    @post.save
    @comment.save
  end

  context 'When testing the Comment class' do
    it 'should update comments counter' do
      expect(@post.comments_counter).to eq(1)
    end
  end
end
