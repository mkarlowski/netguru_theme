# require 'sass'
# require 'bourbon'
# require 'bootstrap-sass'

module NetguruTheme
  class Generator < Thor
    desc 'install', 'Install netguru_theme styles into your project'
    def install
      render = Sass::Engine.new(File.read(path), params).render
      File.write('netguru-theme.min.css', render)
    end

    private

    def path
      File.join(top_level_directory, 'app', 'assets', 'stylesheets', '_netguru-theme.scss')
    end

    def top_level_directory
      File.dirname(File.dirname(File.dirname(__FILE__)))
    end

    def params
      {
        cache: false,
        syntax: :scss,
        style: :compressed,
        filename: path
      }
    end
  end
end
