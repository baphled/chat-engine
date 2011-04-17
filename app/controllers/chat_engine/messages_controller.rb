module ChatEngine
  class MessagesController < ApplicationController
    before_filter :find_model, :only => [:edit, :update]

    def new
      @message = ChatEngine::Message.new
    end

    def create
      @message = ChatEngine::Message.new params[:chat_engine_message]
      if @message.save
        redirect_to chat_engine_path
      else
        redirect_to chat_engine_path
      end
    end
  end
end