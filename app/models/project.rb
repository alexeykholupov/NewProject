class Project < ActiveRecord::Base
  has_many :projects_teams
  has_many :teams, through: :projects_teams
  has_many :tasks
  has_many :posts
end
