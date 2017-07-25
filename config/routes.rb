Rails.application.routes.draw do
  namespace :admin do
    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource
    end

    root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
  end

  resources :features do
    collection do
      get :completed_sites
      match 'search' => 'features#index', :via => [:get, :post], :as => :search
    end
    resources :bibliographies
  end



  authenticated :user do
    root 'features#index', as: :authenticated_root
  end

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
