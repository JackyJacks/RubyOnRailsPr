class CommentsController < ApplicationController
  #http_basic_authenticate_with name: "admin", password: "admin", except: [:index, :show]
  before_action :require_login, except: [:index, :show]

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)

    redirect_to post_path(@post)
  end

  private def comment_params
    params.require(:comment).permit(:user_name, :body)
  end
end
