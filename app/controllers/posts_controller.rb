class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :edit, :destroy]

  def index
    @posts = Post.posts_by current_user
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to @post, notice: "Your post was created successfully"
    else
      render :new
    end
  end

  def show
  end

  def edit
    authorize @post
  end

  def update
    authorize @post
    if @post.update(post_params)
      redirect_to @post, notice: "Your post was successfully updated"
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to posts_path, notice: "You post has been deleted"
    end
  end

  private
    def post_params
      params.require(:post).permit(:date, :rationale, :status, :overtime_request)
    end

    def set_post
      @post = Post.find(params[:id])
    end

end
