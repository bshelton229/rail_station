require 'rails/all'
require 'rail_station/config'
require "rail_station/view_helpers"
require "rail_station/engine"
require "rail_station/version"

module RailStation
  # Config helper
  def self.config
    yield Config
  end
end
