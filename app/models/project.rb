class Project < ActiveRecord::Base
  has_many :teams, through: :projects_teams
  has_many :projects_teams
end
