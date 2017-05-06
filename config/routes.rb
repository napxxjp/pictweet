Rails.application.routes.draw do
  devise_for :users
  root  'tweets#index' #ルートパスの指定

  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end

  # get   'tweets' => 'tweets#index'      #ツイート一覧画面
  # get   'tweets/new' => 'tweets#new'    #ツイート投稿画面
  # post  'tweets' => 'tweets#create'    #ツイート投稿機能
  # delete 'tweets/:id' => 'tweets#destroy'
  # patch  'tweets/:id' => 'tweets#update'
  # get   'tweets/:id/edit' => 'tweets#edit'
  # get   'tweets/:id' => 'tweets#show'
  # get   'users/:id' => 'users#show'   #MyPageへのルーティング
