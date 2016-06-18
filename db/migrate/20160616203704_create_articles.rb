class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :titre
      t.text :contenu
      t.string :auteur

      t.timestamps null: false
    end
  end
end
