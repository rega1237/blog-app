class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :likes, class_name: 'Like', foreign_key: 'post_id', dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :title, length: { maximum: 250 }

  after_save :update_post_counter
  after_destroy :update_post_counter

  def update_post_counter
    author.update(posts_counter: author.posts.count)
  end

  def most_recent_comments
    comments.includes([:author]).order(created_at: :desc).limit(5)
  end

  private :update_post_counter
end
