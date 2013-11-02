class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      flash[:success] = "Thank you! Your comment was posted!"
      redirect_to :controller => "blog_entries", :action => "show", :id => @comment.blog_entry_id
    else
      render "blog_entries/show", :id => @comment.blog_entry_id
    end
  end

  def comment_params
    params[:comment].permit(:name, :email, :website, :text, :blog_entry_id)
  end
end
