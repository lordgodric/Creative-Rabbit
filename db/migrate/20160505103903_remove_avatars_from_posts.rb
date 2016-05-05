class RemoveAvatarsFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :avatar_file_name, :string
    remove_column :posts, :avatar_content_type, :string
    remove_column :posts, :avatar_file_size, :integer
    remove_column :posts, :avatar_uploaded_at, :datetime
  end
end
