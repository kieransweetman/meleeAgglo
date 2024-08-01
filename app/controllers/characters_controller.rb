# frozen_string_literal: true

# character controller
class CharactersController < ApplicationController
  def index
    @characters = Character.all.order(:position)
    @characters_by_row = @characters.each_slice(9).to_a
  end
end
