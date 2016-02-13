class CreateFlashcardSetController < ApplicationController
  def create_flashcard_set
    @flashcards = Flashcard.new(params[:flashcard])
  end
end
