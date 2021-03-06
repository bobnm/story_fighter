StoryFighter::Application.routes.draw do
  resources :information

  resources :conventions
  match "conventions/:id/entry", :controller => :conventions, :action => :entry, :via => :get,
	  :as => "entry_convention"

  get "static_pages/home"
  get "static_pages/help"
  resources :plot_pieces
  resources :random_plot
  resources :story_posts, only: [:create, :destroy, :index, :show, :update, :edit]
  match "story_posts/:id/copy", :controller => :story_posts, :action => :copy, :via => :get,
	  :as => "copy_story_post"
  match "story_posts/:id/like", :controller => :story_posts, :action => :like, :via => :patch,
	  :as => "like_story_post"

  root "static_pages#home"

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
