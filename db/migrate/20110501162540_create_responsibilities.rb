class CreateResponsibilities < ActiveRecord::Migration
  def self.up
    create_table :responsibilities do |t|
      t.string :role
      t.boolean :active
      t.references :user
      t.references :service

      t.timestamps
    end
  end

  def self.down
    drop_table :responsibilities
  end
end
