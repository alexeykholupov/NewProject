class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.text :body

      t.timestamps null: false
      t.references :user, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true
    end
   
  end
end
