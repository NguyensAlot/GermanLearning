class FlashcardController < ApplicationController
  def create
    Flashcard.create(params[:flashcard])
  end
  
  def index
    @allFlashcards = Flashcard.all
  end
  
  def show
    @flashcard = Flashcard.all
  end
end
