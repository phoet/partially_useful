# PartiallyUseful

[![Build Status](https://img.shields.io/travis/phoet/partially_useful/master.svg)](https://travis-ci.org/phoet/partially_useful)

HTML source code is very verbose and can be a pain in the ass to find a specific part on big pages.

Finding the origin of a piece of HTML in the Rails `app/views` directory can be tedious and error prone.

Adding this gem to your Rails application adds HTML comments at development time, so it's easy to find the right partials.

```html
<!-- start rendering 'some_partial' with locals '[:all, :assigned, :locals]'-->
<div class="hello">
    <div class="world">
      [...]
    </div>
</div>
<!-- end rendering 'some_partial' with locals '[:all, :assigned, :locals]'-->
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'partially_useful', group: 'development'
```

## Usage

The plugin is enabled by default, but you can disable it in your Rails configuration:

```ruby
# config/environments/development.rb
config.partially_useful = false
```

## Caveats

HTML comments might subtly break your application when partials are used out of the usual HTML rendering context (JS, CSS etc).

If you run into any problems, make sure to disable the gem and restart your Rails server.

## Supported Ruby and Rails versions

Version 5.1.0 has support for Rails 5.x and Ruby 2.x.
Older Rails and Ruby versions are supported by the 0.x releases.

## Contributing

1. Fork it ( https://github.com/phoet/partially_useful/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

"THE (extended) BEER-WARE LICENSE" (Revision 42.0815): [phoet](mailto:ps@nofail.de) contributed to this project.

As long as you retain this notice you can do whatever you want with this stuff.
If we meet some day, and you think this stuff is worth it, you can buy me some beers in return.
