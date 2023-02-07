class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save?
      flash[:success] = "Your comment has been posted!"
      redirect_to root_path
    else
      flash.now[:error] = "Please fix the errors."
      render :new, status: :unprocessable_entity
    end
  end
end
