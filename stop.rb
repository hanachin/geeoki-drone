require 'artoo'

connection :ardrone, adaptor: :ardrone
device :drone, driver: :ardrone

work do
  drone.hover.land
  drone.stop
end
