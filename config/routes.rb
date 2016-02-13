Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :flashcard
  get 'create_flashcard_set', to: 'flashcard#create_flashcard_set'
  get 'practice_flashcards', to: 'flashcard#flashcard'
end
