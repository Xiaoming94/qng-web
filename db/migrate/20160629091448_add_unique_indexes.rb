class AddUniqueIndexes < ActiveRecord::Migration
  def change
    add_index :users, :email, unique: true
    add_index :users, :username, unique: true
    add_index :pages, :title, unique: true
  end
end
