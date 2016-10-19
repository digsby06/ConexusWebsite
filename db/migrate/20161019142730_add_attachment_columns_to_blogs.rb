class AddAttachmentColumnsToBlogs < ActiveRecord::Migration
  def change
    add_attachment :blogs, :hero
  end
end
