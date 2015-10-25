class CreateSecretKnocks < ActiveRecord::Migration
  def change
    create_table :secret_knocks do |t|

      t.timestamps null: false
    end
  end
end
