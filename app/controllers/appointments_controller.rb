class AppointmentsController < ApplicationController
	
  def index
  	@appointments = Appointment.all
  end

  def new
  	@appointment = Appointment.new
  	# @patient = Patient.new
  	# @physician = Physician.new
  end

  def create
    @patient_id = Patient.find_by(name: params[:appointment]['patient_id']).id
    @physician_id = Physician.find_by(name: params[:appointment]['physician_id']).id
    @appointment = Appointment.create(appointment_params)
    @appointment.update(patient_id: @patient_id, physician_id: @physician_id)
    @appointment.save!
    redirect_to appointments_path(@appointment)
  end

 private

  def appointment_params
    params.require(:appointment).permit(:date, :patient_id, :physician_id)
  end
end
