# frozen_string_literal: true

# character controller
class CharactersController < ApplicationController
  CHARACTER_NAME_MAPPING = {
    'DrMario' => 'Dr. Mario'
  }.freeze
  def index
    @characters = Character.all.order(:position)
    @characters_by_row = @characters.each_slice(9).to_a
  end

  def show
    full_name = [params[:id], params[:format]].compact.join('.')

    @character = Character.find_by(name: full_name)

    if @character.nil?
      Rails.logger.warn "Character not found: #{full_name}"
      render plain: 'not found', status: :not_found
    else
      Rails.logger.info "Character found: #{@character.name}"
    end
  end
end
