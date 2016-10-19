class AddHeroMetaToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :hero_meta, :text
  end
end
