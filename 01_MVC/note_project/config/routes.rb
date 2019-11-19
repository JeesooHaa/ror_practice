Rails.application.routes.draw do
  # / == /home/index
  # home 의 index action 
  root "home#index"
  # REST 의 get?!!
  # 앞에 붙은게 요청방식 
  # get 'home/index', to: 'home#index'
  get 'home/index'
  get 'home/new'
  post 'home/create'
  # url 과 action 의 이름이 같지 않기 때문에 shortcut 을 사용할 수 없다.
  # key 가 추가되었기 때문.
  # : 이 없으면 /post_id 라는 url 로 이동 
  # : 은 post_id 라는 변수에 값을 저장한다는 의미 
  get 'home/destroy/:post_id' => 'home#destroy'
  get 'home/edit/:post_id' => 'home#edit'
  post 'home/update/:post_id' => 'home#update', as: 'post_destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
