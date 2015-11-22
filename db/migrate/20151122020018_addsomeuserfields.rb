class Addsomeuserfields < ActiveRecord::Migration
  def change
    add_attachment :users, :avatar
    add_column :users, :name, :string
  end
end
