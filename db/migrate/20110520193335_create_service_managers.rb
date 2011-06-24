class CreateServiceManagers < ActiveRecord::Migration
  def self.up
    create_table :service_managers, :primary_key => false do |t|
      t.references :service
      t.references :user
      t.timestamps
    end
  end

  def self.down
    drop_table :service_managers
  end
end
