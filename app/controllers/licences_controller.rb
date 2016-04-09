class LicencesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :new, :delete]
  def index
    @licences = Licence.all
  end

  def destroy
    @licence = Licence.find(params[:id])
    @licence.destroy
    redirect_to '/licences'
  end

  def new
    @licence = Licence.new
  end

  def edit
    @licence = Licence.find(params[:id])
  end

  def create
    @licence = Licence.new(licence_params)
    if @licence.save
      redirect_to '/licences'
    else
      render 'new'
    end
  end

  def update
    @licence = Licence.find(params[:id])
    if @licence.update_attributes(licence_params)
      redirect_to '/licences'
    else
      render 'edit'
    end
  end


  private
  def licence_params
    params.require(:licence).permit(:content)
  end
end

