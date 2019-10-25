class Vehicle
  def initialize(model_year)
    @model_year = model_year
    @lights = "off"
    @signal = "off"
  end
  def get_year
    @model_year
  end

  def get_lights
    @lights
  end

  def lights_on
    @lights = "on"
  end
  def lights_off
    @lights = "off"
  end

  def get_signal
    @signal
  end

  def signal_left
    @signal = 'left'
  end

  def signal_right
    @signal = 'right'
  end

end

class Car < Vehicle
  def initialize(model_year)
    super(model_year)
    @wheels = 4
    @horn = "BEEP!"
    @speed = 0
    @model = "car"
  end
  def get_model
    @model
  end
  def get_wheels
    @wheels
  end

  def honk_horn
    @horn
  end

  def get_speed
    @speed
  end

  def get_info
    {'model' => @model, 'model year' => @model_year, 'wheels' => @wheels, 'horn' => @horn, 'speed' => @speed, 'lights' => @lights, 'signal' => @signal}
  end
  def garage
    []
  end
end

class Toyota < Car
  def initialize(model_year)
    super(model_year)
    @horn = "whoop"
    @model = "Toyota"
  end
  def honk_horn
    @horn
  end
  def accelerate
    @speed +=7
  end
  def brake
    @speed -= 5
  end
end

class Tata < Car
  def initialize(model_year)
    super(model_year)
    @horn = "beep"
    @model = "Tata"
  end
  def honk_horn
    @horn
  end

  def accelerate
    @speed += 2
  end

  def brake
    @speed -= 1.25
  end
end

class Tesla < Car
  def initialize(model_year)
    super(model_year)
    @horn = "Beep-bee-bee-boop-bee-doo-weep"
    @model = "Tesla"
  end
  def honk_horn
    @horn
  end
  def get_year
    @model_year
  end

  def accelerate
    @speed += 10
  end

  def brake
    @speed -= 7
  end
end
