class Property < ActiveRecord::Base
  default_scope order('created_at DESC')

  #if defined? PgSearch
  #  include PgSearch
  #  pg_search_scope :search_by_address, :against => [:address, :city, :province, :postal_code]
  #end

  include PgSearch
  multisearchable :against => [:address, :city,:province,:postal_code,:sqft,:bathrooms,:bedrooms,:price,:cars]

  validates_presence_of :address, :city, :province, :postal_code, :sqft, :bedrooms, :bathrooms, :property_status, :price, :cars

  belongs_to :property_status
  belongs_to :property_type

  has_attached_file :image, :styles => { :regular => "620x310#", :thumb => "298x161#", :slide => "898x325#" }, :default_url => "/images/:style/missing.png"

  def city_state_postal_code
    "#{city}, #{province} #{postal_code}"
  end
end
