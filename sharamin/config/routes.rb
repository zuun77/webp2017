Rails.application.routes.draw do
  resources :resumes
  resources :user
	get 'hacker_spots/index'

	resources :posts
	get '/' => "posts#index"

	post '/user/register' => "user#register"
	post '/user/login' => "user#login"
	post '/user/logout' => "user#logout"

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
