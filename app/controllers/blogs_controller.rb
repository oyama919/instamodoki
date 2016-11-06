class BlogsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_blog, only: [:edit, :update, :destroy]
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blogs_params)
    @blog.user_id = current_user.id
    @blog.save
    redirect_to blogs_path, notice: "投稿しました！"
  end

  def edit
  end

  def update
    if @blog.update(blogs_params)
      redirect_to blogs_path, notice: "投稿を更新しました！"
    else
      render action: 'edit'
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path, notice: "投稿を削除しました！"
  end

private
  def blogs_params
    params.require(:blog).permit(:name, :content)
  end
  def set_blog
    @blog = Blog.find(params[:id])
  end
end
