module PartiallyUseful
  module PartialRenderer
    def render(context, options, block)
      if html_context?(context)
        msg = "rendering '#{options[:partial]}' with locals '#{(options[:locals] || {}).keys}'"
        "<!-- start #{msg}-->\n#{super(context, options, block)}\n<!-- end #{msg}-->\n".html_safe
      else
        super(context, options, block)
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
