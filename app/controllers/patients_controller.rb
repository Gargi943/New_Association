class PatientsController < ApplicationController
  prepend_before_action :check_captcha, only: :create

  def index
  	@patients = Patient.all
  end

  def show
  	@patient = Patient.find(params[:id])
  end
 
  def new
  	@patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.save
    redirect_to patients_path
     #  if verify_recaptcha(model: @patient) && @patient.save
     #    redirect_to patients_path
      # else
      #   render 'new'
      # end
  end

  private
   def patient_params
    params.require(:patient).permit(:name)
   end

    def check_captcha
      unless verify_recaptcha
        self.resource = resource_class.new patient_params
        resource.validate # Look for any other validation errors besides Recaptcha
        respond_with_navigational(resource) { redirect_to patients_path }
      end 
    end




# def check_captcha
#   return true if Rails.env.test?
#   unless verify_recaptcha
#     self.resource = resource_class.new sign_up_params
#     resource.validate # Look for any other validation errors besides Recaptcha
#     set_minimum_password_length
#     respond_with resource
#   end
# end

end
