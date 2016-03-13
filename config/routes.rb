Rails.application.routes.draw do
   # get 'static_pages/home'

  #get 'static_pages/help'

  

  resources :categories


  get '/userprojects' => 'projects#userprojects', :as => 'userprojects'
  get '/showproject/:id' => 'projects#showproject', :as => 'showproject'
  get '/finishedprojects' => 'projects#finished_projects', :as => 'finishedprojects'
  get '/finisheddetail/:id' => 'projects#finished_detail', :as => 'finisheddetail'
  post '/submitproject/:id' => 'projects#submitproject', :as => 'submitproject'
  post '/returnproject/:id' => 'projects#returnproject', :as => 'returnproject'
  post '/enableproject/:id' => 'projects#enableproject', :as => 'enableproject'
  post '/saveprofilepic' => 'projects#saveprofilepic', :as => 'saveprofilepic'
  get '/show_reward_desc' => 'payments#show_reward_desc', :as => 'show_reward_desc'
  get '/invoice/:id' => 'payments#invoice', :as => 'invoice'
  get '/userpayments' => 'payments#userpayments', :as => 'userpayments'
  get '/payments/selectreward/:id' => 'payments#selectreward', :as=> 'selectreward'
  post '/confirmpayment/:id' => 'payments#confirmpayment', :as => 'confirmpayment'

  resources :projects do
    resources :pictures, :only => [:create, :destroy]
  end

  resources :payments
  resources :rewards
  
  devise_scope :user do
    post '/saveuserpic' => 'users/registrations#saveuserpic', :as => 'saveuserpic'
    post '/deluserpic' => 'users/registrations#deluserpic', :as => 'deluserpic'
  end
 

  devise_for :users, :controllers => { :omniauth_callbacks => "users/callbacks", :registrations => "users/registrations" }


  

  #devise_for :users, :controllers => {:registrations => "users/registrations"}
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#home'
  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'
  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'
  get '/project_terms' => 'static_pages#project_terms'
  get '/success' => 'static_pages#success'
  get '/faq' => 'static_pages#faq'
  get '/listall/:id' => 'static_pages#listall', :as => 'listall'
  get '/listup/:id' => 'static_pages#listup', :as => 'listup'
  get '/search' => 'static_pages#search', :as => 'search'
  get '/sign_up_success' => 'static_pages#sign_up_success', :as => 'sign_up_success'


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
