class AddCityToBeacon < ActiveRecord::Migration[5.0]
  def change
    add_belongs_to :beacons, :city, index: true
  end
end
