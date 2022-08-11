class Like < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post, class_name: 'Post'

  def update_likes_counter
    if post.likes_counter.nil?
      post.update(likes_counter: 1)
    else
      post.update(likes_counter: post.likes_counter + 1)
    end
  end
end
