UserSubmission::Application.routes.draw do
  match "submissions/admin"
  resources :submissions
  root :to => 'submissions#index'
end
