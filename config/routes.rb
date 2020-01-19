Rails.application.routes.draw do
  # getは画面遷移する場合に、postは<form>などデータ送信に更新の場合はpatchを使用
  get 'todolists/new'
  get 'top' => 'homes#top'
  post 'todolists' => 'todolists#create'

  get 'todolists' => 'todolists#index'

  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'
  delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist'
end
