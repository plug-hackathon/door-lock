class EncryptedMessage < ActiveRecord::Base
  belongs_to :user_cipher

  before_save :generate_random_word

  delegate :username, to: :user_cipher

  def decrypt
    user_cipher.decrypt(self)
  end

  def generate_random_word
    self.text = user_cipher.plain.chars.sample(4).join
  end
end
