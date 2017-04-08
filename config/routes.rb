Rails.application.routes.draw do
  get 'powerball/index'
  get 'result' => 'powerball#pick_your_ball'
  root 'powerball#index'
end
