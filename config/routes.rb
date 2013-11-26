# Project3::Application.routes.draw do

#   scope :api do
#     resources :admins, except: [:new, :show, :edit], 
#       defaults: { format: :json } do
#         get ':id' => 'admins#index', on: collection
#     end
#   end
 
#   root 'admins#index'


# end


Project3::Application.routes.draw do

  scope :api do
    resources :venues, defaults: { format: :json }, except: [:show, :new, :edit] do
    	get ':id' => 'venues#index', on: :collection

      resources :events, defaults: { format: :json }, except: [:show, :new, :edit] do
      	get ':id' => 'events#index', on: :collection

      	
      end
    end
  end

  root 'site#index'
end

