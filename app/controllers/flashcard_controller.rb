class FlashcardController < ApplicationController
  def index
    @flashcards = Flashcard.all
  end
  
  def show
    #@flashcard = Flashcard.find(params[:id])
    @flashcard = Flashcard.find(1)
  end
  
  def flashcard
  end
end
