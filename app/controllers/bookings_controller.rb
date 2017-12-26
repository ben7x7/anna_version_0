class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
    @service = service.new
  end

  # def edit
  #   @service = service.find(params[:id])
  # end

  # def update
  #   @service = service.find(params[:id])
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
    @service = service.find(params[:service_id])
    @booking.service = @service

    if @booking.save
      redirect_to services_path(@service)
    else
      render 'services/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :date, :starting_time, :ending_time, :service, :price)
  end

end
