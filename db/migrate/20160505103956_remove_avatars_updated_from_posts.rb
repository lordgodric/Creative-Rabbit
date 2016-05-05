class RemoveAvatarsUpdatedFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :avatar_updated_at, :datetime
  end
end
