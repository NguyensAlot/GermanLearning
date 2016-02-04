Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  get 'create_flashcards', to: 'flashcard#create_flashcard_set'
  get 'practice_flashcards', to: 'flashcard#flashcard'
end
