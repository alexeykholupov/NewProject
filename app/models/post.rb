class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  has_many :post_comments
end
