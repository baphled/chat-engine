require 'pusher'

module ChatEngine
  class MessagesController < ApplicationController
    layout 'chat_engine'
    
    before_filter :find_model, :only => [:edit, :update]

    def new
      @message = ChatEngine::Message.new
    end

    def create
      @message = ChatEngine::Message.new params[:chat_engine_message]
      if @message.save
        Pusher['messages'].trigger('new-message', @message.attributes)
      end
      respond_to do |format|
        format.js { render :nothing => true }
        format.html { redirect_to chat_engine_path }
      end
    end
  end
end