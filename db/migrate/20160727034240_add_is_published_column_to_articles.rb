class AddIsPublishedColumnToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :published, :boolean
  end
end
