class WebhooksController < ApplicationController
  def knock
    Rails.logger.info "WEBHOOK: #{params.inspect}"
    WebsocketRails[:notifications].trigger 'knock', {}
    render :nothing
  end
end
