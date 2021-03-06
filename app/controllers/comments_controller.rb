class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.create(comment_params)

      respond_to do |format|
        if @comment.save
          format.html { redirect_to @post, notice: 'Comment was successfully created.'}
          format.json { render json: @comment, status: :created, location: @comment } 
        else
          format.html { render action: "new" }
          format.json { render json: @comment.errors, status: :unprocessable_entity } 
        end
      end
  end

  def comment_params
      params.require(:comment).permit(:post_id, :body)
  end

end
