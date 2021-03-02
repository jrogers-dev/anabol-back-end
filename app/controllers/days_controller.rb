class DaysController < ApplicationController
  def index
    days = Day.all
    render json: DaySerializer.new(days).serializable_hash
  end

  def create
    day = Day.create(day_params)
    render json: DaySerializer.new(day).serializable_hash
  end

  def show
    day = Day.find(params[:id])
  end

  def update
    day = Day.find(params[:id])
    day.update(day_params)
    render json: DaySerializer.new(day).serializable_hash
  end

  def destroy
    Day.destroy(params[:id])
  end

  private

  def day_params
    params.require(:day).permit(:date)
  end
end
