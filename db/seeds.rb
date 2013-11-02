# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(:email => "admin@example.com", :password => "password") if User.find_by_email("admin@example.com").nil?
PropertyStatus.where(:name => "For Rent").first_or_create
PropertyStatus.where(:name => "For Sale").first_or_create

PropertyType.where(:name => "Condo").first_or_create
PropertyType.where(:name => "Townhouse").first_or_create
PropertyType.where(:name => "Semi-detached").first_or_create
PropertyType.where(:name => "Detached").first_or_create