require 'open-uri'

class FlatsController < ApplicationController
  def index
    @flats = parse_flats
  end

  def show
    @flat = parse_flats.find do |flat|
      flat['id'].to_i == params[:id].to_i
    end
  end

  private

  def parse_flats
    JSON.parse(open('https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json').read)
  end
end
