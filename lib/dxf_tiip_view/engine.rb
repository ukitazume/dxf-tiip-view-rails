module DxfTiipView
  class Engine < ::Rails::Engine
    isolate_namespace DxfTiipView
    initializer 'dxf_tiip_view.action_view_helpers' do
      ActiveSupport.on_load :action_view do
        include DxfTiipView::ViewHelper
      end
    end
    
    def self.mounted_path
      # p 'hello'
      # p self
      route = Rails.application.routes.routes.detect do |route|
        # p route.app.app.class.name
        route.app.app == self
      end
      # p route
      route && route.path
    end
  
  end
end
