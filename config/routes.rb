StoreServer::Application.routes.draw do
  resources :products, defaults: {format: :json}
  resources :carts,    defaults: {format: :json}
  resources :orders,   defaults: {format: :json}
end
