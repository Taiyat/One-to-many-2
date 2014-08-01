Rails.application.routes.draw do
  # Routes for the Song resource:
  # CREATE
  get '/new_song' => 'songs#new'
  get '/create_song' => 'songs#create'

  # READ
  get '/songs' => 'songs#index'
  get '/songs/:id' => 'songs#show'

  # UPDATE
  get '/songs/:id/edit' => 'songs#edit'
  get '/songs/:id/update' => 'songs#update'

  # DELETE
  get '/songs/:id/destroy' => 'songs#destroy'
  #------------------------------

  # Routes for the Artist resource:
  # CREATE
  get '/new_artist' => 'artists#new'
  get '/create_artist' => 'artists#create'

  # READ
  get '/artists' => 'artists#index'
  get '/artists/:id' => 'artists#show'

  # UPDATE
  get '/artists/:id/edit' => 'artists#edit'
  get '/artists/:id/update' => 'artists#update'

  # DELETE
  get '/artists/:id/destroy' => 'artists#destroy'
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
