class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all()
  end

  def show

  end

  def edit

  end

  def update
    if @posts.update(post_params)
      redirect_to posts_url, notice: "l'article à bien été modifié"
    else
      render :edit
    end

  end

  def new
    @posts = Post.new

  end

  def create
    @posts = Post.new()
    if @posts.update(post_params)
      redirect_to posts_url, notice: "l'article à bien été créé"
    else
      render :new
    end
  end

  def destroy
    @posts.destroy
    redirect_to posts_url, notice: "l'article à bien été supprimé"

  end

  private
    def set_post
      @posts = Post.find(params[:id])
    end

    def post_params

      params.require(:post).permit(:name, :content)

    end

end
