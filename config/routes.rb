Rails.application.routes.draw do
  root to: 'dashbord#index'
  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end
