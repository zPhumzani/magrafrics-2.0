class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category

  scope :recent_posts, lambda {where(published: true).order("created_at DESC").limit(5)}
end
