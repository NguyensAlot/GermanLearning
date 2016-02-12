class CreateFlashcardSetController < ApplicationController
  def index
    @flashcards = Flashcards.find(:all)
    
  end
  
  def new
    @flashcards = Flashcards.new
  end
end
