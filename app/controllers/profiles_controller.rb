class ProfilesController < ApplicationController

  before_action :set_profiles , only: [:show, :edit, :destroy]

  def show
   @reservations = Booking.where(profile:current_user.profile)
   @requests = Booking.where(host:current_user.profile.host)
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  def edit
  end

  def update
    updated_user = current_user.profile.update_attributes(profile_params)
    if updated_user
      redirect_to profile_path(current_user.profile)
    else
      render :edit
    end
  end

  def destroy
    @profile.destroy
    redirect_to profiles_path
  end

  private

  def set_profiles
    @profile = Profile.find(current_user.profile.id)
  end

  def profile_params
    params.require(:profile).permit(:user_id, :first_name, :last_name, :photo, :gender, :birth_date)
  end
end
