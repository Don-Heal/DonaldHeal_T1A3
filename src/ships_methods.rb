require "colorize"
require "artii"
# gives the ship carriers a random grid reference
def ship_carrier
  ship_carrier = []

  ship_carrier << ["A1", "B1", "C1", "D1"]
  ship_carrier << ["H8", "G8", "F8", "E8"]
  ship_carrier << ["C3", "C4", "C5", "C6"]

  ship_1 = ship_carrier.sample(1)
  ship_4 = ship_carrier.sample(1)

  return [ship_1, ship_4]
end

# gives the ship destroyer a random grid reference
def ship_destroyer
  ship_destroyer = []

  ship_destroyer << ["A2", "A3", "A4"]
  ship_destroyer << ["B4", "B5", "B6"]
  ship_destroyer << ["H4", "H5", "H6"]
  ship_destroyer << ["G1", "G2", "G3"]
  ship_destroyer << ["A5", "A6", "A7"]

  ship_2 = ship_destroyer.sample(1)
  ship_5 = ship_destroyer.sample(1)

  return [ship_2, ship_5]
end

# gives the ship patrol a random grid reference
def ship_patrol
  ship_patrol = []

  ship_patrol << ["G4", "G5"]
  ship_patrol << ["B8", "C8"]
  ship_patrol << ["C7", "D7"]
  ship_patrol << ["F1", "F2"]

  ship_3 = ship_patrol.sample(1)
  ship_6 = ship_patrol.sample(1)

  return [ship_3, ship_6]
end

# method for sinking a ship
def sunk
  a = Artii::Base.new
  a.asciify("sunk")
  puts a.asciify("YOU SUNK MY").colorize(:green)
  puts a.asciify("BATTLESHIP").colorize(:green)
end
