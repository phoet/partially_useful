module PartiallyUseful
  module PartialRenderer
    def self.included(klass)
      klass.send :alias_method, :original_rails_render, :render
      klass.send :remove_method, :render
    end

    def render(context, options, block)
      if html_context?(context)
        msg = "rendering '#{options[:partial]}' with locals '#{(options[:locals] || {}).keys}'"
        "<!-- start #{msg}-->\n#{original_rails_render(context, options, block)}\n<!-- end #{msg}-->\n".html_safe
      else
        original_rails_render(context, options, block)
      end
    end

    private

    def html_context?(context)
      if context && context.request
        context.request.format.html?
      end
    end
  end
end
