class AppointmentsController < ApplicationController
    def index
        @appointments = current_user.appointments
      end
      def new
        @appointment = current_user.appointments.build
      end
end
