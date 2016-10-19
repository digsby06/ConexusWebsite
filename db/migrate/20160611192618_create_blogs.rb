class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :post_title
      t.text :entry

      t.timestamps null: false
    end
  end
end
