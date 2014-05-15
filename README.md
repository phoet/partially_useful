# PartiallyUseful

When looking at a rendered html page, it's often hard to tell where the code of a partial lives inside the views directory.

Surrounds rendered partials with html-comments in order to simplify the process of finding the proper file.

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

The plugin is enabled by default, buy you can disable it in your rails configuration:

```ruby
# config/environments/development.rb
config.partially_useful = false
```

## Supported Ruby versions

See .travis.yml

## Contributing

1. Fork it ( https://github.com/[my-github-username]/partially_useful/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

"THE (extended) BEER-WARE LICENSE" (Revision 42.0815): [phoet](mailto:ps@nofail.de) contributed to this project.

As long as you retain this notice you can do whatever you want with this stuff.
If we meet some day, and you think this stuff is worth it, you can buy me some beers in return.
