class CreateServiceFollowers < ActiveRecord::Migration
  def self.up
    create_table :service_followers, :primary_key => false do |t|
      t.references :service
      t.references :user
      t.timestamps
    end
  end

  def self.down
    drop_table :service_followers
  end
end
