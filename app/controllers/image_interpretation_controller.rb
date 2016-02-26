class ImageInterpretationController < ApplicationController
  def index
    @image = Image.all
  end
  
  def show
    @selectedImage = Image.find(params[:id])
  end
end
