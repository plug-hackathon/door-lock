class WebhooksController < ApplicationController
  def knock
    Rails.logger.info "WEBHOOK: #{params.inspect}"
    session[:secret_knock] = true
    WebsocketRails[:notifications].trigger 'knock', {}
    render :nothing
  end
end
