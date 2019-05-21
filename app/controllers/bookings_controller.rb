class BookingsController < ApplicationController

  before_action :find_user, except: [:destroy]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to @user
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to booking_index_path
  end

  private

  def find_user
    @user = User.find(session[:current_user_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :item_id)
  end
end
