class AppointmentsController < ApplicationController
  def index
  	@appointments=Appointment.all
  end

  def new
  	@appointment=Appointment.new
  end

  def create
  	@appointment=Appointment.new(patient_params)
  	@appointment.save
  	redirect_to appointments_path
  	
  end

  private

  def patient_params
  	params.require(:appointment).permit(:patient_id,:physician_id)
  	
  end
end
