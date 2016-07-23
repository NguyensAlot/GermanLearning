Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :flashcard
  resources :image_interpretation do
    collection do
      get 'filter'
    end
  end
  resources :essay_sim
  resources :article_questioning
  resources :resource
  get 'create_flashcard_set', to: 'flashcard#create'
  get 'practice_flashcards', to: 'flashcard#flashcard'
  get 'full_sim', to: 'essay_sim#full_sim'
end
