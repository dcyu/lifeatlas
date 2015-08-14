Rails.application.routes.draw do


  resources :block_lists

  resources :words do
  end

  resources :stops

  get 'auth' => 'aspirations#auth', as: :auth
  get 'contacts' => 'aspirations#contacts', as: :contacts
  
  get 'mandarin' => 'words#mandarin', as: :mandarin
  get 'swahili' => 'words#swahili', as: :swahili
  get 'gop_twitter' => 'words#twitter', as: :gop_twitter
  get 'gop_twitter_women' => 'words#gop_twitter_women', as: :gop_twitter_women

  resources :aspirations

  resources :favorites

  resources :venues

  resources :trips

  resources :subjects

  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  resources :destinations do
    member do
      get 'landing', as: :landing
    end
    resources :posts do
      member do
        get 'write', as: :write
        patch 'update_writing', as: :update_writing
      end
      resources :photos
    end
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'destinations#landing'

  # Example of regular route:
  get 'about' => 'destinations#about', as: :about
  get 'stats' => 'destinations#stats', as: :stats

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
