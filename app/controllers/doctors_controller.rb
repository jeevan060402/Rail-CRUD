# controllers/doctors_controller.rb
class DoctorsController < ApplicationController
    before_action :require_user
    # before_action :require_doctor_role

    private
    def require_doctor_role
      redirect_to root_path, alert: "Access denied" unless current_user.role == "doctor"
    end
  
    def index
      @patients = Patient.all
      @patients_by_day = Patient.group_by_day(:created_at).count
      puts "Patients by day: #{@patients_by_day.inspect}"
    end
  end
  