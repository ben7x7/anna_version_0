class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @service = Service.new
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.user = current_user
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render 'edit'
    end
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @service = Service.find(params[:service_id])
    @booking.service = @service

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'services/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :date, :starting_time, :ending_time)
  end

end
