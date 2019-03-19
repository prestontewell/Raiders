Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get '/offplayers' => 'offplayers#index'
    post '/offplayers' => 'offplayers#create'
    patch '/offplayers/:id' => 'offplayers#update'
    get '/offplayers/:id' => 'offplayers#show'
    delete 'offplayers/:id' => 'offplayers#destroy'
  end
end
