class Api::V1::CommentsController < Api::V1::BaseController
    before_action :set_comment, only: [:edit, :update, :show, :destroy]

    def index
        @comments = Comment.where(restaurant_id: params[:restaurant_id]).order('created_at DESC')
    end

    def show

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

    def update
        if @comment.update(comments_param)
            render :show
        else
            render_error
        end
    end

    def destroy
        if @comment.destroy
            render json: { success: "deleted" }
        else
            render json: { error: "error"}
        end
            # No need to create a `destroy.json.jbuilder` view
    end

    private

    def set_comment
        @comment = Comment.find(params[:id])
    end

    def comments_param
        params.require(:comment).permit(:name, :image, :content)
    end

    def render_error
        render json: { errors: @comment.errors.full_messages },
            status: :unprocessable_entity
    end
end