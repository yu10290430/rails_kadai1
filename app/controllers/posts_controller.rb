class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
    
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params.require(:post).permit(:posts_id, :title, :start, :end, :all, :memo))
    if @post.save
      redirect_to:posts
      flash[:notice] ="スケジュールを新規登録しました"
    else
      flash.now[:danger] = "登録に失敗しました。再度入力し直してください。"
      render"new"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update(params.require(:post).permit(:title, :start, :end, :all, :memo))
     flash[:notice]= "「#{@post.id}」のスケジュールを更新しました"
     redirect_to:posts
    else
     flash.now[:notice] = "更新に失敗しました。再度入力し直してください"
     render"edit"
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice]= "#{@post.id}のスケジュールを削除しました"
    redirect_to :posts
  end
end


