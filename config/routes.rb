Web::Application.routes.draw do
  resources :pages, :only => [:index, :show]

  root 'home#index'

  namespace :admin do
    # Directs /admin/pages/* to Admin::PagesController
    resources :pages
  end
end
