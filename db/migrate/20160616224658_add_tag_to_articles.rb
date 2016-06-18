class AddTagToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :tag, :string
    add_column :articles, :string, :string
  end
end
