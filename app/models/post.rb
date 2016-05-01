class Post < ActiveRecord::Base
  validates_presence_of :customer
  belongs_to :customer
end
