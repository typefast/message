class CreateInstantMessages < ActiveRecord::Migration
  def change
    create_table :instant_messages do |t|
      t.text :message
      t.timestamps null: false
    end
  end
end
