StoreServer::Application.routes.draw do
  resources :products, defaults: {format: :json}
  resources :carts, defaults: {format: :json}
end
