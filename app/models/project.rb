class Project < ActiveRecord::Base
  has_many :project_teams
  has_many :teams, through: :project_teams
  has_many :tasks
  has_many :posts
end
