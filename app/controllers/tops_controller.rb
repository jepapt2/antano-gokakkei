class TopsController < ApplicationController
  def index
    @posts_view = Post.order(impressions_count: 'DESC').first(4)
    @posts_latest = Post.order(created_at: 'DESC').first(4)
    @tags = Post.tag_counts.first(3)
  end
end
