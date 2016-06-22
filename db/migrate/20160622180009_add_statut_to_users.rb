class AddStatutToUsers < ActiveRecord::Migration
  def change
    add_column :users, :statut, :text
  end
end
