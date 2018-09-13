Rails.application.routes.draw do
  devise_for :applicants, :controllers => { :registrations => 'applicants/registrations', :sessions => 'applicants/sessions' }
  devise_for :employers, :controllers => { :registrations => 'employers/registrations' , :sessions => 'employers/sessions'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'applicants/index'
  get 'employers/index'
  get 'home/index'
  post 'applicants/apply_to_employer'

  root to: 'home#index'
end
