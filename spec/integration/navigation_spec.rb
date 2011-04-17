require 'spec_helper'

describe "Navigation" do
  include Capybara
  
  it "should be a valid app" do
    ::Rails.application.should be_a(Dummy::Application)
  end
  
  it "should able to send a message" do
    pending 'Yet to implement'
    
    visit '/chat-engine'
  
    fill_in 'chat_engine[message]' :with => "my comment"
    click_button 'Send'
  
    page.should have_content "baphled: my comment"
  end
  
  it "allows me to view the messages on in the chat"
  it "can select a message color"
  it "can send out invitations to join"
end
