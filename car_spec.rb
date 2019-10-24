require 'rspec'
require_relative 'car'

# Stories Story: As a programmer, I can make a vehicle. Hint: Test that Vehicle.new does not raise any errors.
describe "Vehicle" do
  it "has to be real" do
    expect{ Vehicle.new(1999) }.to_not raise_error
  end
end

# Story: As a programmer, I can make a car. Hint: Test that creating an instance of the new class does not raise any errors.

describe "Car" do
  it "has to be real" do
    expect { Car.new(1999) }.to_not raise_error
  end
end

# Story: As a programmer, I can tell how many wheels a car has; default is four. Hint: initialize the car to have four wheels, then create a method to return the number of wheels.

describe "Car" do
  it "has wheels" do
    new_car = Car.new(2000)
    expect(new_car.get_wheels).to be_a Integer
    expect(new_car.get_wheels).to eq 4
  end
end

# Story: As a programmer, I can honk the horn. Hint: When I call honk_horn, I get a "BEEP!".

describe "Car" do
  it "has a horn that can be honked and makes the sound 'BEEP!'" do
  new_car = Car.new(1998)
  expect(new_car.honk_horn).to eq "BEEP!"
  end
end
#
# Story: As a programmer, I can make a Toyota car. Hint: Test that class Toyota which inherits from class Car can be created.

describe "Toyota" do
  it "can exist" do
  expect {Toyota.new(1999)}.to_not raise_error
  end
end
#
# Story: As a programmer, I can honk the horn of a Toyota car which makes the sound "whoop".

describe "Toyota" do
  it "has a horn that can be honked and makes the sound 'whoop'" do
  new_toyota = Toyota.new(2000)
  expect(new_toyota.honk_horn).to eq "whoop"
  end
end

#
# Story: As a programmer, I can make a Tata car.

describe "Tata" do
  it "can be created" do
    expect {Tata.new(1998)}.to_not raise_error
  end
end

#
# Story: As a programmer, I can honk the horn of a Tata car - "beep".
describe "Tata" do
  it "has a horn that can be honked and makes the sound 'beep'" do
    new_tata = Tata.new(1988)
    expect(new_tata.honk_horn).to eq "beep"
  end
end

#
# Story: As a programmer, I can make a Tesla car.
describe "Tesla" do
  it "can be created" do
    expect {Tesla.new(2016)}.to_not raise_error
  end
end

#
# Story: As a programmer, I can honk the horn of Tesla - "Beep-bee-bee-boop-bee-doo-weep".
describe "Tesla" do
  it "has a horn that can be honked and makes the sound 'Beep-bee-bee-boop-bee-doo-weep'" do
    new_tesla = Tesla.new(2000)
    expect(new_tesla.honk_horn).to eq "Beep-bee-bee-boop-bee-doo-weep"
  end
end

# Story: As a programmer, I can tell which model year a vehicle is from. Model years never change. Hint: Make model year part of the initialization.
describe "Vehicle" do
  it "has a model year" do
    new_vehicle = Vehicle.new(2000)
    expect(new_vehicle.get_year).to be_a Integer
    end
  end


#
# Story: As a programmer, I can turn on and off the lights on a given Vehicle. Hint: Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?
describe "Vehicle" do
  it "has lights that can be turned on and off" do
  new_vehicle = Vehicle.new(1989)
  expect(new_vehicle.lights_on).to eq "on"
  expect(new_vehicle.lights_off).to eq "off"
  end
end

# Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position.
describe "Vehicle" do
  it "has lights that start in the off position" do
  new_vehicle = Vehicle.new(2005)
  expect(new_vehicle.get_lights).to eq "off"
  end
end

describe "Vehicle" do
  it "has lights that turn on" do
  new_vehicle = Vehicle.new(2005)
  new_vehicle.lights_on
  expect(new_vehicle.get_lights).to eq "on"
  end
end

describe "Vehicle" do
  it "has lights that turn off after being on" do
  new_vehicle = Vehicle.new(2005)
  new_vehicle.lights_on
  new_vehicle.lights_off
  expect(new_vehicle.get_lights).to eq "off"
  end
end

#
# Story: As a programmer, I can signal left and right. Turn signals starts off.
describe "Vehicle" do
  it "has turn signals that start in the off position" do
  new_vehicle = Vehicle.new(2005)
  expect(new_vehicle.get_signal).to eq "off"
  end
end

describe "Vehicle" do
  it "has turn signals that can signal to the left" do
  new_vehicle = Vehicle.new(2005)
  new_vehicle.signal_left
  expect(new_vehicle.get_signal).to eq "left"
  end
end

describe "Vehicle" do
  it "has turn signals that can signal to the right" do
  new_vehicle = Vehicle.new(2005)
  new_vehicle.signal_right
  expect(new_vehicle.get_signal).to eq "right"
  end
end

#
# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.

describe "Car" do
  it "has a speed. it starts at 0" do
    new_car = Car.new(2000)
    expect(new_car.get_speed).to be_a Numeric
    expect(new_car.get_speed).to eq 0
  end
end

#
# Story: As a programmer, I can speed my Teslas up by 10 km/h per acceleration.

describe "Tesla" do
  it "can be speeded up by 10 km/h per acceleration" do
  new_tesla = Tesla.new(2019)
  expect(new_tesla.get_speed).to eq 0
  new_tesla.accelerate
  expect(new_tesla.get_speed).to eq 10
  end
end

#
# Story: As a programmer, I can slow my Teslas down by 7 km/h per braking.

describe "Tesla" do
  it "can slow down by 7 km/h per braking" do
  new_tesla = Tesla.new(2019)
  new_tesla.accelerate
  expect(new_tesla.get_speed).to eq 10
  new_tesla.brake
  expect(new_tesla.get_speed).to eq 3
  end
end

#
# Story: As a programmer, I can speed my Tatas up by 2 km/h per acceleration.

describe "Tata" do
  it "can be speeded up by 2 km/h per acceleration" do
  new_tata = Tata.new(2019)
  expect(new_tata.get_speed).to eq 0
  new_tata.accelerate
  expect(new_tata.get_speed).to eq 2
  end
end
#
# Story: As a programmer, I can slow my Tatas down by 1.25 km/h per braking.
describe "Tata" do
  it "can be slowed  down by 1.25 km/h per braking" do
  new_tata = Tata.new(2019)
  new_tata.accelerate
  expect(new_tata.get_speed).to eq 2
  new_tata.brake
  expect(new_tata.get_speed).to eq 2-1.25
  end
end

#
# Story: As a programmer, I can speed my Toyotas up by 7 km/h per acceleration.
#
describe "Toyota" do
  it "can be speeded up by 7 km/h per acceleration" do
  new_toyota = Toyota.new(2019)
  expect(new_toyota.get_speed).to eq 0
  new_toyota.accelerate
  expect(new_toyota.get_speed).to eq 7
  end
end



# Story: As a programmer, I can slow my Toyotas down by 5 km/h per braking.

describe "Toyota" do
  it "can be slowed down by 5 km/h per braking" do
  new_toyota = Toyota.new(2019)
  new_toyota.accelerate
  expect(new_toyota.get_speed).to eq 7
  new_toyota.brake
  expect(new_toyota.get_speed).to eq 2
  end
end


#
# Story: As a programmer, I can call upon a car to tell me all it's information. Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.

describe "Car" do
  it "can be called upon to tell all its information" do
    new_car = Car.new(2000)
    expect(new_car.get_info).to eq 4
  end
end

#
# Story: As a programmer, I can store and retrieve all of my cars from a garage. Hint: "Garage" is a noun, "store" and "retrieve" are verbs.



#
# Story: As a programmer, I can sort the cars in my garage based on model year.



#
# Story: As a programmer, I can sort the cars in my garage based on model. Hint: Sort based on class name.



#
# Story: As a programmer, I can sort the cars in my garage based on model and then year. Hint: Find out how the spaceship operator can help you with an array.
