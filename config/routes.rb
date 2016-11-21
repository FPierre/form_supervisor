Rails.application.routes.draw do
  resources :forms
  resources :validation_patterns do
    # TODO
    # resources :validation_patterns
  end
end
