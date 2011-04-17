module ChatEngine
  class MainController < ApplicationController
    def index
      @messages = ChatEngine::Message.all.to_a.reverse
      @message = ChatEngine::Message.new :from => current_user.username
    end
  end
end