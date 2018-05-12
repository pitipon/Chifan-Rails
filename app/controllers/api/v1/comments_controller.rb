class Api::V1::CommentsController < Api::V1::BaseController

    def index
        @comments = Comment.where(restaurant_id: params[:restaurant_id]).order('created_at DESC')
    end

    def create
        @comment = Comment.new(comments_param)
        @comment.restaurant_id = params[:restaurant_id] 
            if @comment.save
                render json: {}, status: :created
            else
                render_error
            end
        
    end

    private

    def comments_param
        params.require(:comment).permit(:name, :image, :content)
    end

    def render_error
        render json: { errors: @comment.errors.full_messages },
            status: :unprocessable_entity
    end
end