class CalendarsController < ApplicationController
  before_action :set_calendar, only: [:show, :update, :destroy]

  # GET /calendars
  def index
    calendars = Calendar.all

    render json: calendars
  end

  # GET /calendars/1
  def show
    if @calendar
      render json: @calendar
    else
      render json: { message: "Calendar not found. Please try again." }
    end
  end

  # POST /calendars
  def create
    parsed_calendar_params = {
      title: calendar_params[:title],
      start_month: calendar_params[:start_month].to_i,
      start_year: calendar_params[:start_year].to_i,
      end_month: calendar_params[:end_month].to_i,
      end_year: calendar_params[:end_year].to_i
    }

    calendar = Calendar.new(parsed_calendar_params)

    if calendar.save
      render json: calendar, status: :created, location: calendar
    else
      render json: calendar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /calendars/1
  def update
    if @calendar.update(calendar_params)
      render json: @calendar
    else
      render json: @calendar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /calendars/1
  def destroy
    if @calendar.destroy
      render json: { message: "Calendar successfully deleted." }
    else
      render json: { message: "Error deleting calendar. Please try again." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendar
      @calendar = Calendar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def calendar_params
      params.require(:calendar).permit(:title, :start_month, :start_year, :end_month, :end_year)
    end
end
