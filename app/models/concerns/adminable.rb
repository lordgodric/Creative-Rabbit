module Adminable
  extend ActiveSupport::Concern

  def admin?
    admin
  end
end
