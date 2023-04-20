Rails.application.routes.draw do
 
root to: 'main#index'

get '/about_us', to: 'about_us#show'

get '/get_in_touch', to: 'get_in_touch#show'

end
