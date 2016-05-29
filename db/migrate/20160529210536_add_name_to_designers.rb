class AddNameToDesigners < ActiveRecord::Migration
  def change
    add_column :designers, :name, :string
  end
end
