Rails.application.routes.draw do
  
  resources :merchant_applications do 
    resource :business_info, except:[:new, :create, :delete]
    resource :owner_info, except:[:new, :create, :delete]
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
