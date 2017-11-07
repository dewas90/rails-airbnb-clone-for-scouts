class ProfilesController < ApplicationController

  before_action :set_profiles , only: [:show, :edit, :destroy]

  def show
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  def destroy
    @profile.destroy
    redirect_to profiles_path
  end

  private

  def set_profiles
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:user_id, :first_name, :last_name)
  end
end
