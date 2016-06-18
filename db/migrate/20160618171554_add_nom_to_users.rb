class AddNomToUsers < ActiveRecord::Migration
  def change
    add_column :users, :prenom, :string
    add_column :users, :nom, :string
  end
end
