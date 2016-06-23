class CreateTaskComments < ActiveRecord::Migration
  def change
    create_table :task_comments do |t|
      t.text :content
      t.references :task, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
