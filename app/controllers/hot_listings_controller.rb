class HotListingsController < ApplicationController
  def create  
    @hot_listing = HotListing.new(hot_listing_params)

    if @hot_listing.save
      Mailer.hot_listing(@hot_listing).deliver
      flash[:success] = "Thanks for submitting your request. You are now subscribed to our Hot Listing Alerts."
      redirect_to "/"
    else
      render "home/hot_listing"
    end
  end

  def hot_listing_params
    params[:hot_listing].permit(:email, :name, :phone, :comments)
  end
end
