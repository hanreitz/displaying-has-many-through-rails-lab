class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new(appointment_params)
  end

  def create
    appoinment = Appointment.new(appointment_params)
    if appointment.save
      redirect_to appointment_path(appointment)
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:appointment_datetime, :doctor, :patient)
  end
end
