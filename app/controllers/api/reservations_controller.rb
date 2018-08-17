class Api::ReservationsController < ApplicationController

    def index
        @reservation = Reservation.where(guest_id: current_user.id)
    end

    def create
        @reservation = Reservation.new(reservation_params)
        @reservation.guest_id = current_user.id

        if @reservation.save
            render :show
        else
            render json: @review, status: :unprocessable_entity
        end
    end

    def update

    end

    def destroy

    end


    private
    def reservation_params
        params.require(:reservation).permit(:num_guests, :check_in_date, :check_out_date, :home_id, :guest_id)
    end
end
