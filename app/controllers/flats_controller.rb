require 'open-uri'

class FlatsController < ApplicationController
  def list
    @flats = JSON.parse(open('https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json').read)
  end

  def show
  end
end
