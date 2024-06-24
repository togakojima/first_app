class PostsController < ApplicationController

  def index  # indexアクションを定義した
    @posts = Post.all  # すべてのレコードを@postsに代入
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to "/posts"
  end
  
  private
  
  def post_params
    params.require(:post).permit(:content)
  end
end
