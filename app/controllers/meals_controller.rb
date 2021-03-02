class MealsController < ApplicationController
  def index
    meals = Meal.all
    render json: MealSerializer.new(meals).serializable_hash
  end

  def create
    meal = Meal.create(meal_params)
    render json: MealSerializer.new(meal).serializable_hash
  end

  def show
    meal = Meal.find(params[:id])
  end

  def update
    meal = Meal.find(params[:id])
    meal.update(meal_params)
    render json: MealSerializer.new(meal).serializable_hash
  end

  def destroy
    Meal.destroy(params[:id])
  end

  private

  def meal_params
    params.require(:meal).permit(:date)
  end
end
