class CampSitesController < ApplicationController

  protect_from_forgery
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :set_camp_sites , only: [:show, :edit, :destroy]

  def search
    query = params[:search][:query]
    if query == ""
      @camp_sites = CampSite.all
    else
      @camp_sites = CampSite.search(query)
    end
    render 'index'
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end



  def index
    @camp_sites = CampSite.all
    @camp_sites_geo = CampSite.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@camp_sites_geo) do |camp_site, marker|
      marker.lat camp_site.latitude
      marker.lng camp_site.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @camp_site = CampSite.new
  end

  def create
    @camp_site = CampSite.new(camp_sites_params)
    @camp_site.host = current_user.profile.host
    if @camp_site.save
      redirect_to camp_site_path(@camp_site)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @camp_site.update(camp_site_params)
    redirect_to camp_site_path(@camp_site)
  end

  def destroy
    @camp_site.destroy
    redirect_to camp_sites_path
  end

  private

  def set_camp_sites
    @camp_site = CampSite.find(params[:id])
  end

  def camp_sites_params
    params.require(:camp_site).permit(:title, :description, :capacity, :category, :address, :price, photos: [])
  end
end
