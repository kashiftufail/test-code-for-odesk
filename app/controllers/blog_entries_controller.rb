class BlogEntriesController < ApplicationController
  def index 
    @blog_entries = BlogEntry.where(:published => true).order("created_at DESC").page(params[:page]).per(3)
  end

  def show
    @entry = BlogEntry.find(params[:id])
    @comment = Comment.new
  end
end
