class AddIndexToColumns < ActiveRecord::Migration[7.0]
  def change
    add_index :chapters, :name, unique: true
    add_index :users, :github_username, unique: true
  end
end
