class PostController < ApplicationController

    def home
    render 'post.html.erb'
    end


    def index
        @posts = Post.all
    end
end
