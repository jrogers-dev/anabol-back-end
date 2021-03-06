class FoodsController < ApplicationController
  def index
    foods = Food.all
    render json: FoodSerializer.new(foods).serializable_hash
  end

  def create
    food = Food.create(food_params)
    render json: FoodSerializer.new(food).serializable_hash
  end

  def show
    food = Food.find(params[:id])
    render json: FoodSerializer.new(food).serializable_hash
  end

  def update
    food = Food.find(params[:id])
    food.update(food_params)
    render json: FoodSerializer.new(food).serializable_hash
  end

  def destroy
    Food.destroy(params[:id])
  end

  private

  def food_params
    params.require(:food).permit(:rapidapi_id, :user_id, :name, :serving, :calories, :fat, :protein, :carbohydrates)
  end
end
