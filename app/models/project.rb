class Project < ActiveRecord::Base
  has_and_belongs_to_many :teams
  has_many :tasks
  has_many :posts
end
