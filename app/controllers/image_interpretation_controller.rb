class ImageInterpretationController < ApplicationController
  def index
    @image = Image.all
  end
  
  def show
    @selectedImage = Image.find(params[:id])
  end
  
  def filter
    @filteredImage = Image.where('category' => params[:category])
  end
end