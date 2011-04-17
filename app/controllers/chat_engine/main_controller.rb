module ChatEngine
  class MainController < ApplicationController
    def index
      @messages = ChatEngine::Message.all.to_a
      @message = ChatEngine::Message.new
    end
  end
end