class RepliesController < ApplicationController
  def create
  	@comment = Comment.find(params[:comment_id])
  	@reply = @comment.replies.new(reply_params)
  	@reply.save
  end

  def destroy
  end
      private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @reply = Reply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reply_params
      params.require(:reply).permit(:commenter, :body)
    end
end
