class CreateComments < ActiveRecord::Migration
drop_table :comments
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.text :body

      t.timestamps null: false
    end
    t.references :user, index: true, foreign_key: true
    t.references :post, index: true, foreign_key: true
    add_index :comments, :post_id
  end
end
