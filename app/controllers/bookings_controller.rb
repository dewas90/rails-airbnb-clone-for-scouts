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
    @booking.save
    redirect_to profile_path(current_user)
  end

  def cancel
    @booking.camp_site.booked = false
    @booking.status = "canceled"
    @booking.camp_site.save
    redirect_to profile_path(current_user)
  end

  private
  def create_booking
   @camp_site = CampSite.find(params[:camp_site_id])
   @camp_site.booked = true
   @host = @camp_site.host
   @booking = Booking.new(camp_site:@camp_site, host:@host, profile:current_user.profile)
   @camp_site.save
  end

  def set_bookings
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:camp_site_id)
  end
end
