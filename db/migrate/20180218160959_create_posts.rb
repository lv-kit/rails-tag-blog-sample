class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :slug, unique: true
      t.text :body
      t.integer :category_id, foreign_key: true

      t.timestamps
    end
    add_index :posts, :category_id
  end
end
