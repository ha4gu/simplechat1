Rails.application.routes.draw do
  get 'chat',     to: 'posts#index'
  get 'chat/:id', to: 'posts#show'

  root 'static#top'
  get  'about', to: 'static#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
