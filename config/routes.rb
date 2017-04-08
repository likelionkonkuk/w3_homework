Rails.application.routes.draw do
  get 'game/game'
  root "game#game"
end