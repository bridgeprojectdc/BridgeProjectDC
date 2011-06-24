class CreateSubscriptions < ActiveRecord::Migration
  def self.up
    create_table :subscriptions do |t|
      t.references :user
      t.references :service

      t.timestamps
    end
  end

  def self.down
    drop_table :subscriptions
  end
end
