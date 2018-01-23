class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
    @booking = Booking.new
  end

private

  def service_params
    params.require(:service).permit(:activity, :hourly_fee, :description, :agency, :picto)

  end
end
