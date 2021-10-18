class ContactController < ApplicationController

  before_action :contact_params, only: [:create]
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to contact_index_path, notice: 'Message Successfully sent'
    else
      redirect_to contact_index_path, notice: @contact.errors
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message, :subject)
  end
end
