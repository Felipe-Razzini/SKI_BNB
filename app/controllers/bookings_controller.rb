class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def new
    @ski = Ski.find(params[:ski_id])
    @booking = Booking.new
  end

  def create
    @ski = Ski.find(params[:ski_id])
    @booking = Booking.new(booking_params)
    @booking.ski = @ski
    if @booking.save
      redirect_to ski_path(@ski), notice: 'Booking was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :ski_id, :total_price)
  end

end
