class FlashcardController < ApplicationController
  def create
    Flashcard.create(params[:flashcard])
    #@newFlashcard.save()
  end
  
  def index
    @allFlashcards = Flashcard.all
  end
  
  def show
    @flashcard = Flashcard.all
  end
  
  def flashcard
  end
  
=begin
  private
  def flashcard_params
    params.require(:flashcard).permit(:set_name, :word, :definition)
  end
=end
end
