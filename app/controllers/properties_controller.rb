class PropertiesController < ApplicationController
  def search
    #if params[:flag]
    all_records = []
    search1 = PgSearch.multisearch(params[:keyword])
    search2 = PgSearch.multisearch(params["price-min"])
    search3 = PgSearch.multisearch(params["price-max"])
    search4 = PgSearch.multisearch(params[:beds])
    search5 = PgSearch.multisearch(params[:baths])
    search6 = PgSearch.multisearch(params[:sqft])
    search7 = PgSearch.multisearch(params[:city])
    search8 = PgSearch.multisearch(params[:province])
    all_records << search1 << search2 << search3 << search4 << search5 << search6 << search7 << search8
    all_records.flatten!
    proprty_ids = []
    all_records.uniq!
    all_records.each do |pg|
      proprty_ids << pg.searchable_id
    end unless all_records.blank?
    @properties = Property.where("id in (?)", proprty_ids).page(params[:page]).per(7)
    @addresses = []
    @properties.each do |pro|
      @addresses << pro.address
    end unless @properties.blank?
  end

  def show
    @property = Property.find(params[:id])
  end

end
