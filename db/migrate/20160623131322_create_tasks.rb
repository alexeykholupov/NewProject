class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :content
      t.string :status
      t.datetime :start_date
      t.datetime :due_date
      t.datetime :estimations

      t.timestamps null: false
    end
  end
end
