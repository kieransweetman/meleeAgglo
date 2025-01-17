# frozen_string_literal: true

# general helpers + unorganized ones
module ApplicationHelper
  # Get character selection screen icon asset from pipeline
  def character_image_path(character_name)
    image_path = "portraits/#{character_name}/cssIcon.png"
    asset_exists?(image_path) ? image_path : ''
  end

  private

  def asset_exists?(path)
    if Rails.env.production?
      # In production, use the precompiled asset path
      Rails.application.assets_manifest.find_sources(path).present?
    else
      # In development, use the assets pipeline
      Rails.application.assets.find_asset(path).present?
    end
  end
  ###
end
