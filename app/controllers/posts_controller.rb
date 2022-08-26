class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.find(params[:user_id])
    @posts = Post.includes([:author]).where(author_id: params[:user_id])
  end

  def show
    @post = Post.find(params[:id])
    @comments = Comment.includes([:author]).where(post_id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    values = params.require(:post).permit(:title, :text)
    @post = Post.new(author: current_user, title: values[:title], text: values[:text])

    if @post.save
      redirect_to users_path, notice: 'your post has been published successfully'
    else
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    #return unless can? :destroy, @post

    @post.destroy
    redirect_to root_path
  end
end
