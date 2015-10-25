class WebhooksController < ApplicationController
  def knock
    Rails.logger.info "WEBHOOK: #{params.inspect}"
    WebsocketRails[:notifications].trigger 'knock', {}
    head :ok
  end
end
