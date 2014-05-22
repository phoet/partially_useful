module PartiallyUseful
  module PartialRenderer
    def self.included(klass)
      klass.send :alias_method, :original_rails_render, :render
      klass.send :remove_method, :render
    end

    def render(context, options, block)
      msg = "rendering '#{options[:partial]}' with locals '#{(options[:locals] || {}).keys}'"
      "<!-- start #{msg}-->\n#{original_rails_render(context, options, block)}\n<!-- end #{msg}-->\n".html_safe
    end
  end
end
