module RailStation
  module ViewHelpers
    # Helper to output Rail Station additional javascript
    def rail_station_additional_javascripts
      # Override
      []
    end

    # Helper method to put out additional stylesheets
    def rail_station_additional_stylesheets
      # Override
      []
    end

    # Admin menu helper
    def rail_station_menu_list(items, ul_class='nav', active_class='active')
      list_items = Array.new
      items.each do |item|
        active = ( params[:controller] and (params[:controller] == item[:controller]) )
        link = link_to(item[:title], item[:link])
        open_tag = active ? "<li class=\"#{active_class}\">" : '<li>'
        close_tag = '</li>'
        list_items << "#{open_tag}#{link}#{close_tag}"
      end
      raw "<ul class=\"#{ul_class}\">" + list_items.join("\n") + '</ul>'
    end

    # Rail Station admin menu array of hashes
    def rail_station_admin_menu
      rail_station_menu_list [
        {
          :title => 'Root',
          :link => '/',
          :controller => 'pages'
        }
      ]
    end

    # Current user shim
    def current_user
      true
    end
  end
end
