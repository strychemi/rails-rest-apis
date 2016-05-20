class StatusesController < ApplicationController
  def index

    @statuses = $twitter_client.user_timeline("strychemi", count: 5)
    respond_to do |format|
      format.html
      format.json { render json: @statuses }
    end
  end
end
