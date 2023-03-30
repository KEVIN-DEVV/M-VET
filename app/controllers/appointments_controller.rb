class AppointmentsController < ApplicationController
    def index
        @appointments = current_user.appointments
      end
      def new
        @appointment = current_user.appointments.build
      end
      def create
        @appointment = current_user.appointments.build(appointment_params)
        if @appointment.save
          redirect_to appointments_path, notice: "Appointment was successfully created."
        else
          render "new"
        end
      end
      def edit
        @appointment = current_user.appointments.find(params[:id])
      end
end
