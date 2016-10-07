class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.string :title
      t.text :body
      t.boolean :published
      t.string :slug

      t.timestamps
    end
    add_index :posts, :slug
  end
end