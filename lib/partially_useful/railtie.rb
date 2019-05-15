module PartiallyUseful
  class Railtie < Rails::Railtie
    config.partially_useful = true

    initializer :partially_useful do |app|
      if app.config.partially_useful
        ActionView::Renderer.prepend(PartiallyUseful::PartialRenderer)
      end
    end
  end
end
