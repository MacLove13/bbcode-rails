require 'rails/generators'
require 'rails/generators/named_base'

module BbCode
  class InstallGenerator < ::Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_files
      ["i", "b", "quote", "img", "code"].each do |name|
        copy_file "#{name}_tag.rb", "app/bbcode/#{name}_tag.rb"
      end
      copy_file "_quote.html.erb", "app/views/bbcode/_quote.html.erb"
      copy_file "code.js", "app/javascript/bbcode/code.js"
    end

    private
    def file_name
      name.underscore
    end
  end
end
