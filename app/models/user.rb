class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :confirmable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, class_name: 'Post', foreign_key: 'author_id', dependent: :delete_all
  has_many :comments, class_name: 'Comment', foreign_key: 'author_id', dependent: :delete_all
  has_many :likes, class_name: 'Like', foreign_key: 'author_id', dependent: :delete_all

  validates :name, presence: true
  validates :posts_counter, comparison: { greater_than_or_equal_to: 0 }

  def recent_posts
    posts.order(created_at: :desc).limit(3)
  end
end
