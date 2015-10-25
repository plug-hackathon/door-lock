class EncryptedMessagesController < ApplicationController
  before_filter :require_secret_knock

  def create
    @encrypted_message = EncryptedMessage.new encrypted_message_params
    @encrypted_message.save!

    respond_to do |format|
      format.js
    end
  end

  def decrypt
    @encrypted_message = EncryptedMessage.find params[:id]
    @encrypted_message_decrypted = @encrypted_message.decrypt == params[:word]

    if @encrypted_message_decrypted
      lock_device.unlock_door
    else
      SecretKnock.destroy_all
    end

    respond_to do |format|
      format.js
    end
  end

  private

  def lock_device
    @lock_device ||= LockDevice.new
  end

  def encrypted_message_params
    params.require(:encrypted_message).permit(:user_cipher_id)
  end
end
