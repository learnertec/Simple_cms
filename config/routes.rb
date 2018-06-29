Rails.application.routes.draw do
    root 'demo#index'
    get 'admin', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  
  resources :subjects do 
      member do
      get :delete 
      end
  end
  
  resources :pages do
     member do 
        get :delete 
     end
  end
  
  resources :sections do
      member do
          get :delete
      end
  end
  
   get 'demo/hi'
   
   get 'demo/index'
   
   get 'demo/other_hello'
 
 
end
