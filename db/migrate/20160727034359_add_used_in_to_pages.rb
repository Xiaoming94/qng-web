class AddUsedInToPages < ActiveRecord::Migration
  def change
    add_column :pages, :useage, :string
  end
end
