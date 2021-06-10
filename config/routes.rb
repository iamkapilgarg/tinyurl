Rails.application.routes.draw do
  get 'home/index'
  post "/urls" => "urls#create"
end
