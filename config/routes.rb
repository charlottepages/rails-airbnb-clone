Rails.application.routes.draw do
  get 'list', to: 'flats#list', as: :list
  get 'show', to: 'flats#show', as: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
