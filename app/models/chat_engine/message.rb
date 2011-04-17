module ChatEngine
  class Message
    include Mongoid::Document
    
    field :sent, :default => Time.now
    field :body
    
    validates_presence_of :body, :on => :create
  end
end