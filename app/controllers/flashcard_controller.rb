class FlashcardController < ApplicationController
  def create
    Flashcard.create(params[:flashcard])
  end
  
  def index
    @allFlashcards = Flashcard.all
  end
  
  def show
    @practiceSet = Flashcard.where('set_name' => params[:set_name])
    @practiceSet.each do |s|
      
    end
  end 
end
