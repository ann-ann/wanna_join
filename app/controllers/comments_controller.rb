class CommentsController < ApplicationController

  def create
    comment = current_user.comments.new(comment_params.merge({invite_id: params[:invite_id]}))

    if comment.save
      ActionCable.server.broadcast 'comments',
        comment: comment.text,
        user: comment.user.name
      head :ok
    else
      redirect_to :back
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:user_id, :invite_id, :text)
    end
end
