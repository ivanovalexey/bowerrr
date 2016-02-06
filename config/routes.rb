Bowerrr::Application.routes.draw do
  match 'angular/*path' => 'application#ng_renderer'

  scope '(/:locale)' do
    scope 'api' do
      resources :users, only: :index
    end
  end

  get '/',    to: 'application#layout'
  get :users, to: 'application#layout'
end
