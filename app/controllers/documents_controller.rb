class DocumentsController < ApplicationController
  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    if @document.save
      flash[:notice] = "Your files are on their way!"
      redirect_to new_delivery_path
    else
      flash[:alert] = "Something went wrong!"
      render :new
    end  
  end

private
  def document_params
    params.require(:document).permit(:delivery_id, :doc, :encrypted_token)
  end
end