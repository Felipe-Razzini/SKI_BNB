class SkisController < ApplicationController

  def index
    @skis = Ski.all
  end
end
