class PostsController < ApplicationController
  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
  end
end
