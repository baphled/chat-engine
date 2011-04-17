Rails.application.routes.draw do
  resource 'chat-engine', :controller => 'chat_engine/engine', :as => :chat_engine, :only => [:index] do
    resources :messages, :controller => 'chat_engine/messages', :except => [:destroy]
  end
  
  match '/chat-engine' => "chat_engine/main#index", :as => :chat_engine
end
