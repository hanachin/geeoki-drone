require 'artoo'

connection :ardrone, adaptor: :ardrone
device :drone, driver: :ardrone

work do
  drone.start
  drone.take_off

  loop { eval gets }
end

__END__
  after(25.seconds) { drone.hover.land }
  after(30.seconds) { drone.stop }

  sleep 10

  drone.turn_right(1.0)
end

