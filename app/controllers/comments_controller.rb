class CommentsController < ApplicationController

  def create
    post_gym = PostGym.find(params[:post_gym_id])
    comment = current_user.comments.new(comment_params)
    comment.post_gym_id = post_gym.id
    comment.save
    redirect_to post_gym_path(post_gym)
  end


  def destroy
   Comment.find_by(id: params[:id]).destroy
   redirect_to post_gym_path(params[:post_gym_id])
  end

private

def comment_params
  params.require(:comment).permit(:comment)

end

end
