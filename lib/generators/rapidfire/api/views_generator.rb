# inspired by devise and foremApi
require 'rails/generators'

module Rapidfire
  module Api
    module Generators
      class ViewsGenerator < Rails::Generators::Base
        source_root File.expand_path('../../../../../app/views/rapidfire/api', __FILE__)
        desc 'Copies default Rapidfire Api views to your application.'

        def copy_views
          view_directory :attempts
          view_directory :answers
          view_directory :surveys
        end

        protected
        def view_directory(name)
          directory name.to_s, "app/views/rapidfire/api/#{name}"
        end
      end
    end
  end
end
