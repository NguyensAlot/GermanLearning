class ImageInterpretationController < ApplicationController
  def index
    @image = Image.all
  end
end
