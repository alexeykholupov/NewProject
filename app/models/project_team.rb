class ProjectTeam < ActiveRecord::Base
  belongs_to :team
  belongs_to :project
  self.table_name = :projects_teams
end
