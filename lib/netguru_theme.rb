require 'netguru_theme/version'

module NetguruTheme
  class Engine < ::Rails::Engine
    require 'sass'
    require 'bootstrap-sass'
    require 'bourbon'
  end
end
