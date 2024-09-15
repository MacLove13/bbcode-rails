$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'bbcode-rails'

RSpec.configure do |config|
  config.before(:each) do
    load 'lib/generators/bb_code/templates/b_tag.rb'
    load 'lib/generators/bb_code/templates/code_tag.rb'
    load 'lib/generators/bb_code/templates/i_tag.rb'
    load 'lib/generators/bb_code/templates/img_tag.rb'
    load 'lib/generators/bb_code/templates/quote_tag.rb'
  end
end

class BrTag < BBCode::Tag
  on_layout do |args|
    "<br>"
  end
end

class UserTag < BBCode::Tag
  block_options :content, :argument

  on_layout do |args|
    "<p>Name: #{args}</p>"
  end
end

