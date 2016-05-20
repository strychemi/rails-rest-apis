class StatusesController < ApplicationController
  def index
    twitter = TwitterAPI.new.twitter_client

    @statuses = twitter.user_timeline("strychemi", count: 5)
    respond_to do |format|
      format.html
      format.json { render json: @statuses }
    end
  end
end
