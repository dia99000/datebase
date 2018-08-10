Rails.application.routes.draw do

  devise_for :users
  resources :examples
  resources :users, only: [:show]
  resources :plans do
  	resources :reviews, only: [:create, :update, :delete]
  	#/plans/:plan_id/reviews(.:format)
  	#Memo: 遷移先をplan_reviews_pathで指定
    collection do
      get :search
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'plans#index'
  # resource :mypage
end
