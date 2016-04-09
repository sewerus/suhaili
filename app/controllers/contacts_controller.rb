class ContactsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :new, :delete]
  def index
    @contacts = Contact.all
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to '/contacts'
  end

  def new
    @contact = Contact.new
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to '/contacts'
    else
      render 'new'
    end
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(contact_params)
      redirect_to '/contacts'
    else
      render 'edit'
    end
  end


  private
  def contact_params
    params.require(:contact).permit(:content)
  end
end
