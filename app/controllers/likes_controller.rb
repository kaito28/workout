class LikesController < ApplicationController


  def create
  post_gym = PostGym.find(params[:post_gym_id])
  like = current_user.likes.new(post_gym_id: post_gym.id)
  like.save
  redirect_to post_gym_path(post_gym)
  end

  def destroy
    post_gym = PostGym.find(params[:post_gym_id])
    like = current_user.likes.find_by(post_gym_id: post_gym.id)
    like.destroy
    redirect_to post_gym_path(post_gym)


  end

end
