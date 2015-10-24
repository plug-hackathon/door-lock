class CreateEncryptedMessages < ActiveRecord::Migration
  def change
    create_table :encrypted_messages do |t|
      t.references :user_cipher, index: true, foreign_key: true
      t.string :text

      t.timestamps null: false
    end
  end
end
