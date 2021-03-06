Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { sessions: 'user/sessions' }
  resources :records do
    resources :songs do
      resources :song_credits
    end
  end
  resources :authors, :players
  
  root to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to:'static_pages#contact'
  get '/collection', to: 'static_pages#collection'
end
