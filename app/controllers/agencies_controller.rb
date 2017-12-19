class AgenciesController < ApplicationController

  def show
    @agency = Agency.find(params[:id])
  end

  private

  def agency_params
    params.require(:agency).permit(:brand, :created_date, :owner, :director, :address, :phone, :contact_person, :mobile, :email, :description)
  end
end
