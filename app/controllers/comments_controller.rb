class CommentsController < ApplicationController

  def create
    @painting = Painting.find(params[:painting_id])
    @comment = @painting.comments.create(comment_params)
    redirect_to @painting
  end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
