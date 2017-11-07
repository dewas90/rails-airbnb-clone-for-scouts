class CampSitesController < ApplicationController

  before_action :set_camp_sites , only: [:show, :edit, :destroy]

  def index
    @camp_sites = Camp_site.all
  end

  def show
  end

  def new
    @camp_site = Camp_site.new
  end

  def create
    @camp_site = Camp_site.new(camp_site_params)
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
    @camp_site = Camp_site.find(params[:id])
  end

  def camp_sites_params
    params.require(:camp_sites).permit(:title, :description, :capacity, :category, :address, :picture, :price)
  end
end
