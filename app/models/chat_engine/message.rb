module ChatEngine
  class Message
    include Mongoid::Document
    
    field :sent
    field :message
  end
end