class ReservationsController < ApplicationController
    before_action :session_expires, only: [:create]
    before_action :update_session_time, only: [:new]
    def new 
        @tickets = Ticket.where(event_id:reservation_params[:event_id])
        @reservation = Reservation.new
    end

    def create 
        @tickets = Ticket.where(event_id:reservation_params[:event_id])
        @reservation = Reservation.new
        @ticket = Ticket.find_by(id:reservation_params[:ticket_id])
        choice = reservation_params[:reservation_type].to_i
        booked = reservation_params[:quantity].to_i
        
        result = check_quantity(booked, @ticket.quantity) && booking_choice(choice,booked, @ticket.quantity)
        remaining_quantity = @ticket.quantity - reservation_params[:quantity].to_i
        if result 
            @reservation = Reservation.create(quantity:reservation_params[:quantity],user_id:1,ticket_id:reservation_params[:ticket_id])
            @ticket.update_quantity remaining_quantity
            if @reservation.save 
                flash[:success] = "Successfully booked"
                redirect_to @reservation
            end
        else
            render :new
        end
    end

    def show 
        @reservation = Reservation.includes(:ticket,:user).find(params[:id])
    end

    def update 
        @reservation  = Reservation.find(params[:id])
        a = Adapters::Payment::Gateway.charge(amount:15,token:"1212")
        p a
        @reservation.pay 
        flash[:success] = "paid!"
        redirect_to @reservation
    end
    private 

    def reservation_params
        params.require(:reservation).permit(:reservation_type,:ticket_id,:quantity, :event_id)
    end

    def session_expires
        unless session[:expires_at] > Time.now
            flash[:danger] = "session expired after 15 minutes idle"
            redirect_to events_path
        end
    end

    def update_session_time
        session[:expires_at] = 2.minutes.from_now
        p session[:expires_at]
        p "the expire time"
    end
end
