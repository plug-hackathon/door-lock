class CreateUserCiphers < ActiveRecord::Migration
  def change
    create_table :user_ciphers do |t|
      t.string :username
      t.string :plain
      t.string :cipher

      t.timestamps null: false
    end
  end
end
