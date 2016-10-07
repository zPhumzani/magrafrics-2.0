class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :categories, :name, unique: true
    add_index :categories, :slug
  end
end
