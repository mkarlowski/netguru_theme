module NetguruTheme
  class Generator < Thor
    option :style

    desc 'install', 'Install netguru_theme styles into your project'
    def install
      return unless valid_style?
      render = Sass::Engine.new(File.read(source_path), params).render
      File.write('netguru-theme.css', render)
    end

    desc 'version', 'Show netguru_theme version'
    def version
      puts "netguru_theme v#{NetguruTheme::VERSION}"
    end

    private

    def valid_style?
      return true if %w(compressed nested expanded compact).include? style
      error_message = 'Invalid --style option. Allowed options: compressed '\
                      '(default), nested, expanded or compact.'
      puts error_message
    end

    def source_path
      top_level_directory = File.dirname(File.dirname(File.dirname(__FILE__)))
      File.join(top_level_directory, 'app', 'assets', 'stylesheets',
                '_netguru-theme.scss')
    end

    def style
      options[:style].nil? ? 'compressed' : options[:style]
    end

    def params
      {
        cache: false,
        syntax: :scss,
        style: style.to_sym,
        filename: source_path
      }
    end
  end
end
