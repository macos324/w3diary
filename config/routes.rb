Rails.application.routes.draw do
  devise_for :users

  resources :articles do
    resource :like, only: [:create, :destroy]
  end

  root 'articles#index'
  # 上記1行追加

  get '/users' => 'users#index'
  # ハッシュの左側がコントローラー名
  # 右側がアクション名

  get '/users/:id' => 'users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
