require 'securerandom'

module Blog
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)


      def copy_initializer
        template '../templates/blog_engine.rb.erb', 'config/initializers/blog_engine.rb'
        copy_file '../templates/assets/blog.css.less', 'app/assets/stylesheets/blog.css.less'
        copy_file '../templates/layouts/application.html.erb', 'app/views/layouts/blog_layout.html.erb'
      end

      def setup_routes
        route "mount Blog::Engine, :at => 'blog'"
      end

      source_root File.expand_path("../templates", __FILE__)

      def create_migrations
        Dir["#{self.class.source_root}/migrations/*.rb"].sort.each do |file_path|
          name = File.basename(file_path)
          template "migrations/#{name}", "db/migrate/#{name}"
          sleep 1
        end
      end

    end
  end
end