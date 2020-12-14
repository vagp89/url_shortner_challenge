Rails.application.routes.draw do
  resources :urls, only: [:index, :new, :create, :show]
  get '/:code', to: 'urls#redirect', as: :short
  get '/:code/stats', to: 'urls#stats', as: :stats
end
