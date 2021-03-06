class Donor < ApplicationRecord
  has_secure_password

  validates_presence_of :bloodtype, message: 'Blood type is required'

  def name
    # self.first_name + '' + self.last_name
    return [self.first_name, self.last_name].map(&:capitalize).join(" ")
  end
end
