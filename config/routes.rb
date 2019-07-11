Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  


  root to: 'books#top' #TOPページ移動





#こいつらいらない↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
  # get 'index' => 'books#index' #indexページ移動

  # post 'books' => 'books#create' #投稿機能追加

  # get 'books/:id/edit' => 'books#edit', as:'edit_post' #editページ移動

  # get 'books/:id' => 'books#show' #閲覧機能追加
#こいつらいらない↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑


  

  
  
  


  resources :books #←コントローラ名

end
