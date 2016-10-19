class Blog < ActiveRecord::Base

  has_attached_file :hero, :styles => { :small => "500x", :large => "1280x" }
	validates_attachment_content_type :hero, :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"]
end
