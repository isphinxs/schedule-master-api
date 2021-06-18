class DaysController < ApplicationController
  before_action :set_day, only: [:show, :update, :destroy]

  # GET /days
  def index
    days = Day.all

    render json: days, only: [:id, :day, :month, :year, :weekday]
  end

  # GET /days/1
  def show
    if @day
      render json: @day, only: [:id, :day, :month, :year, :weekday]
    else
      render json: { message: "Day not found" }
    end
  end

  # POST /days
  def create
    day = Day.new(day_params)

    if day.save
      render json: day, status: :created, location: day
    else
      render json: day.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /days/1
  def update
    if day.update(day_params)
      render json: day
    else
      render json: day.errors, status: :unprocessable_entity
    end
  end

  # DELETE /days/1
  def destroy
    day.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day
      @day = Day.find_by(id: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def day_params
      params.require(:day).permit(:day, :month, :year, :weekday, :calendar_id)
    end
end
