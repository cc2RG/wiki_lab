class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def show

  end  

  def create
    current_user.comments.create(comment_params)
    redirect_to(comments_index_path)
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    comment = Comment.find(params[:id])
    comment.update(comment_params)
    redirect_to(comments_path)
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to(comments_path)
  end


 
end
