require 'spec_helper'

describe "Navigation" do
  include Capybara
  
  it "should be a valid app" do
    ::Rails.application.should be_a(Dummy::Application)
  end
  
  it "should able to send a message" do
    
    visit '/chat-engine'
    
    page.should_not have_content 'Enter'
    
    fill_in 'chat_engine_message[from]', :with => "baphled"
    click_button 'Enter'
    
    fill_in 'chat_engine_message[body]', :with => "my comment"
    click_button 'Send'

    page.should have_content "baphled: my comment"
  end
  
  it "does not send a message if there is no user name"
  it "allows me to view the messages on in the chat"
  it "can select a message color"
  it "can send out invitations to join"
end
