class SkisController < ApplicationController
  def index
    @skis = Ski.all
    @markers = @skis.geocoded.map do |ski|
      {
        lat: ski.latitude,
        lng: ski.longitude
      }
    end
  end
end
