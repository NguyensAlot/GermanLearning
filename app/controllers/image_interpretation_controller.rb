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

=begin
20160218050455_create_images.rb

class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :title
      t.text :description
      t.text :source
      t.text :copyright

      t.timestamps null: false
    end
  end
end

=end