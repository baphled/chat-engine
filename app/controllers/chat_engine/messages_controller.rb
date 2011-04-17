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
        render :new
      end
    end
    
    def edit
    end
    
    def update
      if @message.update_attributes params[:chat_engine_message]
        redirect_to chat_engine_path
      else
        render :edit
      end
    end
    
    private
    def find_model
      @message = ChatEngine::Message.find(params[:id]) if params[:id]
    end
  end
end