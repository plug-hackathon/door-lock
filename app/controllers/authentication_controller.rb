class AuthenticationController < ApplicationController
  def index
    @encrypted_message = EncryptedMessage.new
    @available_user_ciphers = UserCipher.all.collect { |c| [c.username, c.id] }
  end
end
