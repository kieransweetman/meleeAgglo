class IndexController < ApplicationController
  def home
    @characters = Character.all
  end
end
