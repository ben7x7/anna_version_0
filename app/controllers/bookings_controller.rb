class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @service = Service.new
  end

  # def edit
  #   @service = Service.find(params[:id])
  # end

  # def update
  #   @service = Service.find(params[:id])
  #   @service.user = current_user
  #   if @service.update(service_params)
  #     redirect_to service_path(@service)
  #   else
  #     render 'edit'
  #   end
  # end

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
