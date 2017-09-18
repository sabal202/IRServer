json.partial! "beacons/beacon", beacon: @beacon

json.city do
  json.id @beacon.city.id
  json.name @beacon.city.name
end
