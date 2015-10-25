class WebhooksController < ApplicationController
  def knock
    Rails.logger.info "WEBHOOK: #{params.inspect}"
    SecretKnock.create!
    WebsocketRails[:notifications].trigger 'knock', {}
    head :ok
  end
end
