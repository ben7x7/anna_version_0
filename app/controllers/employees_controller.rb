class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  private

  def employee_params
    params.require(:employee).permit(:activity, :contract, :hired_date, :rib, :hourly_rate, :agency, :user)
  end

end
