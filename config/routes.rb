Rails.application.routes.draw do
  get 'explore/:api' => 'api#explore', :as => :explore_api

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  } do
    delete 'sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session
  end

  root to: 'home#index'
end
