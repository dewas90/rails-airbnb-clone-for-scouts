class HostsController < ApplicationController

  before_action :set_hosts , only: [:show, :edit]

  def show
  end

  def new
    @host = Host.new
  end

  def create
    @host = Host.new(host_params)
    @host.profile = current_user.profile
    if @host.save
      redirect_to host_path(@host)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @host.update(host_params)
    redirect_to host_path(@host)
  end

  private

  def set_hosts
    @host = Host.find(params[:id])
  end

  def host_params
    params.require(:host).permit(:bank_account, :profile_id)
  end
end
