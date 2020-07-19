class PostsController < ApplicationController
  def show
    @post = Post.find_by(public_uid: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to controller: 'posts', action: 'show', id: @post.public_uid
    else
      render 'posts/new'
    end
  end
  
  private
  def post_params
    params.require(:post).permit(:title, :name, :overview, :label1, :label2, :label3, :label4, :label5, :value1, :value2, :value3, :value4, :value5, :bgcolor, :tag_list)
  end
end

