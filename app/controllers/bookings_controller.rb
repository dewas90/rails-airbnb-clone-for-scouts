class BookingsController < ApplicationController

  before_action :set_bookings , only: [:show, :approve, :cancel]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def approve
    @booking.status = "approved"
  end

  def cancel
    @booking.cancel = "canceled"
  end

  private

  def set_bookings
    @booking = Booking.find(params[:id])
  end

  def bookings_params
    params.require(:bookings).permit(:profile_id, :host_id, :camp_site_id)
  end
end
