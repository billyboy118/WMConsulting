class BlogController < ApplicationController

  
  def index
    @blogs = Blog.all.order(created_at: :desc)
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id
    if @blog.save
      redirect_to blog_index_path, notice: 'Entry Saved'
    else
      render :new
    end
  end

  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    redirect_to blog_index_path, notice: 'Entry Deleted'
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body, :category)
  end
end
