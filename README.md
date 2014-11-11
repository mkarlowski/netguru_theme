# netguru_theme
[![Dependency Status](https://gemnasium.com/netguru/netguru_theme.svg)](https://gemnasium.com/netguru/netguru_theme)
[![Gem Version](https://badge.fury.io/rb/netguru_theme.svg)](http://badge.fury.io/rb/netguru_theme)

Bootstrap theme used across Netguru internal apps. Netguru_theme is build on top of [Twitter Bootstrap](http://getbootstrap.com/) ([bootstrap-sass](https://github.com/twbs/bootstrap-sass) gem) and includes [Bourbon](https://github.com/thoughtbot/bourbon).

## Installation for Ruby on Rails

Add this line to your application's Gemfile:

    gem 'netguru_theme'

And then execute:

    $ bundle

Then import stylesheets:
```scss
@import 'netguru-theme';
```
and import javascripts:
```js
//= require netguru_theme
```

## Install manually

Install gem:
```
$ gem install netguru_theme
```

Then run
```
netguru_theme install
```

**Tip:** you can choose output style by passing <code>--style</code> option:
```
netguru_theme install --style nested
```
Allowed values are: <code>compressed</code> (default), <code>nested</code>, <code>expanded</code> or <code>compact</code>.

## Contributing

1. Fork it ( https://github.com/netguru/netguru_theme/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
