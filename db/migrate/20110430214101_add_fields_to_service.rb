class AddFieldsToService < ActiveRecord::Migration
  def self.up
    change_table :services do |t|
      t.string   :website
      t.string   :restrictions
      t.decimal  :latitude
      t.decimal  :longitude
      t.text     :description
      t.boolean  :active, :default => false
      t.boolean  :void, :default => false
      t.text     :internal_notes
    end
  end

  def self.down
    change_table :services do |t|
      t.remove :website, :restrictions, :latitude, :longitude,
               :description, :active, :void, :internal_notes
    end
  end
end
