class PostsController < InheritedResources::Base

	def index
		@posts = Post.all
	end

	def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "Post created!"
      redirect_to root_url
    else
      render 'menu/show'
    end
  end

  def destroy
  end

  private

    def post_params
      params.require(:post).permit(:content, :user_id)
    end
end

