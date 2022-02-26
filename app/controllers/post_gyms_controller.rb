class PostGymsController < ApplicationController

  def new
  @post_gyms = PostGym.new
  end

  def create
  @post_gym = PostGym.new(post_gym_params)
  @post_gym .user_id = current_user.id
  @post_gym.save
  redirect_to post_gyms_path

  end

  def index
  @post_gyms = PostGym.all
  end

  def show
  end

  def destroy
  end

  private

  def post_gym_params
  params.require(:post_gym).permit(:image, :workout_at, :workout_menu, :aim)

  end

end
