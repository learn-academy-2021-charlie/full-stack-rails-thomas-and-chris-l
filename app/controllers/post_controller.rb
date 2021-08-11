class PostController < ApplicationController

    def index
        @post = Post.all
    end


    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        if @post.valid?
            redirect_to posts_path
        else
            redirect_to new_post_path
        end
    end

    def destroy
        @post = Post.find(params[:id])
        if @post.destroy
            redirect_to posts_path
        else
            redirect_to post_path(@post)
        end
    end

    def edit
        @post = Post.find(params[:id])
       
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        if @post.valid?
          redirect_to posts_path(@post)
        else
          redirect_to edit_post_path(@post)
        end
    end
      

    private
    def post_params
    params.require(:post).permit(:title, :content)
    end

 
end
