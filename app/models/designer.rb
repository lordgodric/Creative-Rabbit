class Designer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :designer_avatar, styles: { big: "80x80>", medium: "48x48>", small: "16x16>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :designer_avatar, content_type: /\Aimage\/.*\Z/
end
