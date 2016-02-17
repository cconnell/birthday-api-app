class Birthday < ActiveRecord::Base

  def full_name
    "#{first_name.titleize} #{last_name.titleize}"
  end
end
