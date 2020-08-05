class ApplicationController < ActionController::Base
    before_action :search_set
    
    def search_set
      @q = Post.ransack(params[:q])
      @search_posts = @q.result(distinct: true).page(params[:page]).per(2)
    end
    
end
