class Beacon < ApplicationRecord
  SUPPORTED_FILTERS = [:city_id]

  scope :city_id, (->(value) { where(city_id: value) })

  belongs_to :city

  def self.filter(attributes)
    attributes.slice(*SUPPORTED_FILTERS).reduce(all) do |scope, (key, value)|
      value.present? ? scope.send(key, value) : scope
    end
  end
end
