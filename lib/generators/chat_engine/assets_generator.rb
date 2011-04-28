module ChatEngine
  module Generators
    class AssetsGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      
      def copy_assets
        # Layout
        copy_file"app/views/layouts/chat_engine.html.erb","app/views/layouts/chat_engine.html.erb"
        
        # JavaScript
        copy_file"public/javascripts/chat-engine.js","public/javascripts/chat-engine.js"
        copy_file"public/javascripts/showdown.js","public/javascripts/showdown.js"
        copy_file"public/javascripts/jquery.cssemoticons.min.js","public/javascripts/jquery.cssemoticons.min.js"
        
        # Stylesheets
        copy_file"public/stylesheets/jquery.cssemoticons.css","public/stylesheets/jquery.cssemoticons.css"
        copy_file"public/stylesheets/screen.css","public/stylesheets/screen.css"
      end
    end
  end
end