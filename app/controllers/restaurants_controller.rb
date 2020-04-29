class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [:show, :edit, :destroy, :update]
    # before_action :set_review, only: [:show]

    def index
        @restaurants = Restaurant.all
    end

    def show
        @review = Review.new
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.new(restaurants_params)
        if @restaurant.save
            redirect_to restaurant_path(@restaurant)
        else
            render :new
        end
    end

    def edit; end

    def update
        @restaurant.update(restaurants_params)
        redirect_to restaurant_path(@restaurant)
    end

    def destroy
        @restaurant.destroy
        redirect_to restaurants_path
    end

    private

    def restaurants_params
        params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end

    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end

    # def set_review
    #     @review = Review.find(params[:restaurant_id])
    # end
end
