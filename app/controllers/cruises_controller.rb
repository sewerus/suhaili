class CruisesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :new, :delete]
  def index
    @licences = Cruise.all
  end

  def destroy
    @cruise = Cruise.find(params[:id])
    @cruise.destroy
    redirect_to '/cruises'
  end

  def new
    @cruise = Cruise.new
  end

  def edit
    @cruise = Cruise.find(params[:id])
  end

  def create
    @cruise = Cruise.new(cruise_params)
    if @cruise.save
      redirect_to '/cruises'
    else
      render 'new'
    end
  end

  def update
    @cruise = Cruise.find(params[:id])
    if @cruise.update_attributes(cruise_params)
      redirect_to '/cruises'
    else
      render 'edit'
    end
  end


  private
  def cruise_params
    params.require(:cruise).permit(:content)
  end
end