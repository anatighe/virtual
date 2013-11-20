VirtualFile::Application.routes.draw do
  resources :documents
  resources :deliveries
  root :to => "deliveries#new"
end
