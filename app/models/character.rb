# frozen_string_literal: true

# all melee characters records
class Character < ApplicationRecord
  def image_file_name
    subfolder = name.downcase.gsub(' ', '_')
    files = Dir.glob(Rails.root.join('app', 'assets', 'images', 'portraits', subfolder, '*'))
    files.any? ? "/assets/portraits/#{subfolder}/#{File.basename(files.first)}" : nil
  end
end
