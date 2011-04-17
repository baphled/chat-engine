module ChatEngine
  class MainController < ApplicationController
    def index
      @messages = ChatEngine::Message.all.to_a.reverse
      @message = ChatEngine::Message.new
    end
  end
end