class AddAdminFlagToCustomersAndDesigners < ActiveRecord::Migration
  def change
    add_column :customers, :admin, :boolean, default: false
    add_column :designers, :admin, :boolean, default: false
  end
end
