Rails.application.routes.draw do
  resources :urls, only: [:index, :new, :create, :show]
  get '/:code', to: 'urls#redirect', as: :short
end
