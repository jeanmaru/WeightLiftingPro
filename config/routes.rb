WeightLiftingPro::Application.routes.draw do

  resources :muscle_measures

  resources :exercise_entries

  root to: "home#index"

  get 'home/index'
  get 'admin/index'
  get 'calculator' => "calculator#index"
  get 'calculator/new'



  post "/exercises/new"
  post "/routines/remove_exercise_from_routine"
  post "/exercise_entries/graphs"
  post "/muscle_measures/graphs"


  post "/reports/download_monthly_pdf"
  get "/reports/download_monthly_pdf"
  
  post "/reports/download_weekly_pdf"
  get "/reports/download_weekly_pdf"

  post "/reports/download_last_pdf"
  get "/reports/download_last_pdf"

  devise_for :users, :controllers => {:registrations => "users/registrations"}
  resources :users
  resources :exercises
  resources :routines
  resources :sample_exercises
  



  get '/reports/exercise_entry_week' => "reports#exercise_entry_week"
  get '/reports/exercise_entry_month' => "reports#exercise_entry_month"
  get '/reports/last_workout' => "reports#last_workout"
  get '/reports' => "reports#last_workout"





  # -  resources :children
  # -  resources :parents
  # +  resources :parents do
  # +    resources :children
  # +  end

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
