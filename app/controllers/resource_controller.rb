class ResourceController < ApplicationController
  def index
    @res = Resource.all
  end
end
