Rails.application.routes.draw do
  get 'archives/index'
  resources :entries
  root to: 'entries#index'
  delete 'entries/:id/delete' => 'entries#destroy', as: 'entries_delete'
  get '/entries/:id/delete' => 'entries#destroy'
end
