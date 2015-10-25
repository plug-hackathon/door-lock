class WebhooksController < ApplicationController
  skip_before_action :protect_from_forgery

  def knock
    session[:secret_knock] = true
    WebsocketRails[:notifications].trigger 'knock', {}

    head :ok
  end
end
