class Team < ActiveRecord::Base
  has_many :projects_teams
  has_many :projects, through: :projects_teams 
  has_many :users
  
  
end
