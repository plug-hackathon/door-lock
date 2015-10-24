require 'test_helper'

class UserCipherTest < ActiveSupport::TestCase
  setup do
    @cipher = build(:user_cipher)
  end

  test "decrypt a message" do
    message = EncryptedMessage.new(text: "knut")
    assert_equal "hkrq", @cipher.decrypt(message)
  end

  test "encrypt a random word" do
    message = build(:encrypted_message)
    message.generate_random_word
    refute_nil message.text
  end
end
