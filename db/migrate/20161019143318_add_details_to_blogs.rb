class AddDetailsToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :published_at, :datetime
    add_column :blogs, :published, :boolean
  end
end
