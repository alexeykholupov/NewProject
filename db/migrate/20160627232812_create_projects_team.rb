class CreateProjectsTeam < ActiveRecord::Migration
  def change
    create_table :projects_teams, id: false do |t|
      t.references :project, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true
    end
      add_index :projects_teams, :project_id
      add_index :projects_teams, :team_id
  end
end
