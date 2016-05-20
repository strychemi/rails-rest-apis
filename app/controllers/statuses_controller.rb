class StatusesController < ApplicationController
  def index

    @tweets = $twitter_client.user_timeline("strychemi", count: 5)
    respond_to do |format|
      format.html
      format.json { render json: @tweets }
    end
  end
end
