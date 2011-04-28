require 'mongoid/markdown'

module ChatEngine
  class Message
    include Mongoid::Document
    include Mongoid::Markdown
    
    field :from
    field :sent, :default => Time.now
    field :body, :markdown => true
    
    validates_presence_of :body, :on => :create
  end
end