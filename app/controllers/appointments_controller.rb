class AppointmentsController < ApplicationController
    def create 
        appointments = Appointment.create(params_appointments)
        render json: appointments, status: :created
    end
    def update 
        appointment = Appointment.find(params[:id])
        appointment.update(params_appointments)
        render json: appointment, status: :accepted
    end

    private
    def params_appointments
        params.permit(:user_id, :pet_id, :date_time, :type_of_appointment)
    end
end