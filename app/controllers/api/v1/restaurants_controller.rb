class Api::V1::RestaurantsController < Api::V1::BaseController
    # acts_as_token_authentication_handler_for User, except: [ :index, :show ]
    before_action :set_restaurant, only: [:edit, :update, :show, :destroy]

    def index
        @restaurants = Restaurant.all
    end

    def show

    end

    def update
        if @restaurant.update(restaurant_params)
            render :show
        else
            render_error
        end
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        if @restaurant.save
            render :show, status: :created
        else
            render_error
        end
    end

    def destroy
        if @restaurant.destroy
            render json: { success: "deleted" }
        else
            render json: { error: "error"}
        end
            # No need to create a `destroy.json.jbuilder` view
      end

    private

    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :image, :description)
    end

    def render_error
        render json: { errors: @restaurant.error.full_messages },
            status: :unprocessable_entity
    end

end