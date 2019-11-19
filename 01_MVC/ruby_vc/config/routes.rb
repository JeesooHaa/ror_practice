Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # 첫 페이지 지정
  root 'home#index'

  # 경로 지정 
  get '/attack', to: 'home#attack'
  get '/defense', to: 'home#defense'
end
