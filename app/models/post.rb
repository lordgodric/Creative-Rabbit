class Post < ActiveRecord::Base
  has_attached_file :old_logo, styles: { medium: "200x200>", thumb: "100x100>" }, default_url: "/images/missing_:style.png"
  validates_attachment_content_type :old_logo, content_type: /\Aimage\/.*\Z/
  validates_presence_of :customer
  belongs_to :customer
end
