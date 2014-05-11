require File.expand_path('../boot', __FILE__)

require 'action_controller/railtie'
require 'action_view/railtie'

Bundler.require(*Rails.groups)
require "partially_useful"

module Dummy
  class Application < Rails::Application
    config.partially_useful = true
  end
end
