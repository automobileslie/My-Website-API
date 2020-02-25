class PostsController < ApplicationController

    def index 
        posts=Post.all
        render json: posts, only: [:title, :description, :id]
    end

end