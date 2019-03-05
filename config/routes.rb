Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'user/sessions' }
  root to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to:'static_pages#contact'
  get '/signup', to: 'users/sessions#new'
  get '/', to: 'users/sessions#destroy'
end
