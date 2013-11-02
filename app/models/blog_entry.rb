class BlogEntry < ActiveRecord::Base
  paginates_per 4
  has_attached_file :cover_image, :styles => { :regular => "621x301#", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  belongs_to :author, class_name: "User"

  validates_presence_of :title, :html, :author
  validates_inclusion_of :published, :in => [true, false]

  has_many :comments

end
