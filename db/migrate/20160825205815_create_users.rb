class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name, limit: 50
      t.string :last_name, limit: 50
      t.string :company, limit: 100
      t.string :slug

      t.timestamps
    end
    add_index :users, :slug
  end
end
