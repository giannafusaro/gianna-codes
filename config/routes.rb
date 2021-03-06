Rails.application.routes.draw do

  root 'site#home', as: :home
  get '/projects' => 'site#projects', as: :projects
  get '/blog' => 'posts#index', as: :blog
  get '/gallery' => 'site#gallery', as: :gallery
  get '/contact' => 'site#contact', as: :contact
  get '/sf-map' => 'site#sf_map', as: :sf_map

  match '/admin' => 'admin#login', via: [:get, :post], as: :login
  match '/logout' => 'admin#logout', via: [:get, :post], as: :logout
  get '/post/:url_title' => 'posts#show', as: :post

  namespace :admin do
    resources :posts
    get '/home' => 'site#home', as: :home
    get '/posts/:id/preview' => 'posts#preview', as: :preview
    patch '/posts/:id/post_to_preview' => 'posts#post_to_preview', as: :post_to_preview
  end
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
