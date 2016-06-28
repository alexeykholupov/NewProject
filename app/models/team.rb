class Team < ActiveRecord::Base
  has_many :project_teams
  has_many :projects, through: :project_teams 
  has_many :users

  
end
