class Addattachmentstoinvestments < ActiveRecord::Migration
  def change
    add_attachment :investments, :main_image
    add_attachment :investments, :sub_image
  end
end
