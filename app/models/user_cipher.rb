class UserCipher < ActiveRecord::Base
  has_many :encrypted_messages

  def decrypt(message)
    message.text.each_char.inject('') do |decrypted_text, c|
      decrypted_text << self.cipher[self.plain.index(c)]
    end
  end
end
