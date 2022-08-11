class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :likes, class_name: 'Like', foreign_key: 'post_id'
  has_many :comments

  def update_post_counter
    if author.posts_counter.nil?
      author.update(posts_counter: 1)
    else
      author.update(posts_counter: author.posts_counter + 1)
    end
  end

  def most_recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end
