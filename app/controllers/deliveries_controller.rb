class DeliveriesController < ApplicationController
  def new
    @delivery = Delivery.new
  end

  def create
    @delivery = Delivery.new(delivery_params)
    if @delivery.save
      flash[:notice] = "Your files are on their way!"
      redirect_to root_path
    else
      flash[:alert] = "Something went wrong!"
      render :new
    end  
  end

private

  def delivery_params
    params.require(:delivery).permit(:name, :user_email, :recipient_email, :message, documents_attributes: [:delivery_id, :doc, :encrypted_token])
  end
end
