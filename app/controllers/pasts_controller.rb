class PastsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :new, :delete]
  def index
    @pasts = Past.all
  end

  def destroy
    @past = Past.find(params[:id])
    @past.destroy
    redirect_to '/pasts'
  end

  def new
    @past = Past.new
  end

  def edit
    @past = Past.find(params[:id])
  end

  def create
    @past = Past.new(past_params)
    if @past.save
      redirect_to '/pasts'
    else
      render 'new'
    end
  end

  def update
    @past = Past.find(params[:id])
    if @past.update_attributes(past_params)
      redirect_to '/pasts'
    else
      render 'edit'
    end
  end


  private
  def past_params
    params.require(:past).permit(:content)
  end
end