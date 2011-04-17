require 'spec_helper'

describe "Navigation" do
  include Capybara
  
  it "should be a valid app" do
    ::Rails.application.should be_a(Dummy::Application)
  end
  
  it "should able to send a message" do
    @user = User.create!(:username => 'foobar', :email => 'whoami@me.com', :password => 'foobar')
    
    visit '/users/sign_in'
    
    fill_in 'Username', :with => @user.username
    fill_in 'Password', :with => @user.password
    
    click_button 'Sign in'
    
    visit '/chat-engine'
    
    fill_in 'chat_engine_message_body', :with => "my comment"
    click_button 'Send'

    page.should have_content "foobar: my comment"
  end
  
  it "allows me to view the messages on in the chat"
  it "can select a message color"
  it "can send out invitations to join"
end
