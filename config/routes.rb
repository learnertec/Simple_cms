Rails.application.routes.draw do
  
  root 'demo#index'
  
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
