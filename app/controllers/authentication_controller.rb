class AuthenticationController < ApplicationController
  before_filter :require_secret_knock, only: [:users]

  def index
  end

  def users
    @encrypted_message = EncryptedMessage.new
    @available_user_ciphers = UserCipher.all.collect { |c| [c.username, c.id] }
  end
end
