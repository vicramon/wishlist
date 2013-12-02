class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    flash[:update] = "Your comment was successfully added."
    redirect_to wishlist_path(comment.about.id)
  end

  def comment_params
    params.require(:comment).permit(:text, :author_id, :about_id)
  end

end
