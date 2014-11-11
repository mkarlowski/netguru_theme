require 'sass'
require 'bootstrap-sass'
require 'bourbon'

require 'netguru_theme/version'
require 'netguru_theme/generator'

module NetguruTheme
  if defined?(Rails) && defined?(Rails::Engine)
    class Engine < ::Rails::Engine; end
  end
end
