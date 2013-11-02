class Evaluation < ActiveRecord::Base
  validates_presence_of :email, :name, :phone, :address, :city, :province, :postal_code
end
