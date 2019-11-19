class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    post = Post.new
    post.title = params[:post_title]
    # 오타를 잡아주지 못한다...
    post.content = params[:post_content]
    post.save

    # 앞에 / 없으면 오류
    redirect_to '/home/index'
  end

  def destroy
    post = Post.find(params[:post_id])
    post.destroy
    redirect_to '/home/index'

    # 모든 글 삭제 
    # Post.destroy_all
    # redirect_to '/home/index'
  end

  def edit
    @post = Post.find(params[:post_id])
  end

  def update
    # view 파일에서 파일을 써야하는 경우에 @ 를 붙인다.
    post = Post.find(params[:post_id])
    post.title = params[:post_title]
    post.content = params[:post_content]
    post.save

    redirect_to '/home/index'
  end
end
