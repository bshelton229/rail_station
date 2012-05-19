module RailStation
  # Define an engine so Rails loads vendor/assets
  class Engine < ::Rails::Engine
    initializer "rail_station" do |app|
      # Load view helpers
      ActionView::Base.send :include, ViewHelpers
      # Make sure we precompile the uw_admin assets
      # app.config.assets.precompile += %w(uw_admin.js uw_admin.css tinymce.js) + UwAdmin::Rails.tinymce_assets
    end
  end
end
