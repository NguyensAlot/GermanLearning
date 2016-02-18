Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :flashcard
  resources :image_interpretation
  match 'flashcard', to: 'flashcard#create', via: [:post]
  get 'create_flashcard_set', to: 'flashcard#create'
  get 'practice_flashcards', to: 'flashcard#flashcard'
end
