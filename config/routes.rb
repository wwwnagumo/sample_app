Rails.application.routes.draw do
  # getは画面遷移する場合に、postは<form>などデータ送信の際に使用
  get 'todolists/new'
  get 'top' => 'homes#top'
  post 'todolists' => 'todolists#create'
  
  get 'todolists' => 'todolists#index'
end
