class Logo < ActiveRecord::Base
  has_attached_file :new_logo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing_:style.png"
  validates_attachment_content_type :new_logo, content_type: /\Aimage\/.*\Z/

  belongs_to :post
  belongs_to :designer
end
