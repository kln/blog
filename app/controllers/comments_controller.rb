class CommentsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comment_params)

		respond_to do |format|
	      if @comment.save
	        format.html { redirect_to @post, notice: 'Comment was successfully created.' }
	      else
	        format.html { render :new }
	      end
    	end
	end

	private
	def comment_params
      params.require(:comment).permit(:post_id, :message)
    end
end
