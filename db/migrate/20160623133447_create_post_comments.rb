class CreatePostComments < ActiveRecord::Migration
  def change
    create_table :post_comments do |t|
      t.text :content
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
