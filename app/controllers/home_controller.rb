class HomeController < ApplicationController
  def index
    name_of_page = params[:name]
    #binding.pry

    if params["name"]== "listings-for-rent"
      status = PropertyStatus.find_by_name("For Rent").id
      @properties = Property.where("property_status_id = ?", status).page(params[:page]).per(7)
    elsif params["name"]== "listings-for-sale"
      status = PropertyStatus.find_by_name("For Sale").id
      @properties = Property.where("property_status_id = ?", status).page(params[:page]).per(7)
    else
      @properties = Property.page(params[:page]).per(7)
    end

    @addresses = []
    @properties.each do |pro|
      @addresses << pro.address
    end unless @properties.blank?


    render name_of_page
  end

  def evaluation
    @evaluation = Evaluation.new
  end

  def hot_listings
    @hot_listing = HotListing.new
    render "just-listed"
  end

  def contact
    @contact = Contact.new
  end
end
