class StatusesController < ApplicationController
  def index
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["CONSUMER_KEY"]
      config.consumer_secret     = ENV["CONSUMER_SECRET"]
      config.access_token        = ENV["ACCESS_TOKEN"]
      config.access_token_secret = ENV["ACCESS_SECRET"]
    end

    @statuses = client.user_timeline("strychemi", count: 5)
    respond_to do |format|
      format.html
      format.json { render json: @statuses }
    end
  end
end
