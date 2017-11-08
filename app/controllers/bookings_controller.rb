class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bookings , only: [:show, :approve, :cancel]

  def index
    @bookings = current_user.bookings
  end

  def show
  end

  def create
   create_booking

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
  def create_booking
   @camp_site = CampSite.find(params[:camp_site_id])
    @host = @camp_site.host
    @booking = Booking.new(camp_site:@camp_site, host:@host, profile:current_user.profile)
  end

  def set_bookings
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:camp_site_id)
  end
end
