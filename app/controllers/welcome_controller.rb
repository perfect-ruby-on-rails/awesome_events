class WelcomeController < ApplicationController
  skip_before_action :authenticate

  def index
    @events = Event.page(params[:page]).per(10).
      where("start_at > ?", Time.zone.now).order(:start_at)
  end
end
