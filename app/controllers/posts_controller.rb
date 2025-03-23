class PostsController < ApplicationController
  def create
    #user.posts.create(post_params)
    render json: { message: "Post created" }
  end

  private
  
  def post_params
    params.require(:post).permit(:caption, :image_url, :body)
  end
  
end