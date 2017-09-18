class City < ApplicationRecord
  has_many :beacons

  def last_update
    beacons.order(updated_at: :desc).first.updated_at
  end
end
