class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post, class_name: 'Post', foreign_key: 'post_id'

  def update_comments_counter
    if post.comments_counter.nil?
      post.update(comments_counter: 1)
    else
      post.update(comments_counter: post.comments_counter + 1)
    end
  end
end
