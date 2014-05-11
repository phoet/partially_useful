module PartiallyUseful
  module PartialRenderer
    def render(context, options, block)
      msg = "rendering '#{options[:partial]}' with locals '#{(options[:locals] || {}).keys}'"
      "<!-- start #{msg}-->\n#{super(context, options, block)}\n<!-- end #{msg}-->\n".html_safe
    end
  end
end
