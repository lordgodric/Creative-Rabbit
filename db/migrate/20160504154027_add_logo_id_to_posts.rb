class AddLogoIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :logo_id, :integer
  end
end
