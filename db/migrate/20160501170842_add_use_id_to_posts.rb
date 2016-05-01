class AddUseIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :customer_id, :integer
  end
end
