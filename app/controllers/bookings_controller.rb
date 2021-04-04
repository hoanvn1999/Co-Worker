class BookingsController < ApplicationController
  before_action :get_space

  def new
    @booking = Booking.new
    return if logged_in?

    flash[:warning] = t "login.first"
    redirect_to login_path
  end

  def create
    booking = Booking.new booking_params
    if booking.save
      flash[:success] = t "book.success"
      redirect_to root_path
    else
      flash[:danger] = t "book.fail"
      redirect_to new_booking_path(space_id: @space.id)
    end
  end

  private

  def get_space
    @space = Space.find_by id: params[:space_id]
  end

  def booking_params
    params.require(:booking)
          .permit :position, :start_time, :end_time, :description,
                  :user_id, :space_id
  end
end
