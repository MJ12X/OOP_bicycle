# create a method to calculate diameters from an array

class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize(chainring,cog, wheel = nil)
    @chainring = chainring
    @cog       = cog
    @wheel     = wheel
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end
end

class Wheel
  attr_reader :rim, :tire

  def initialize(rim,tire)
    @tire = tire
    @rim  = rim
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end
end


@wheel = Wheel.new(26,1.5)
puts @wheel.circumference
@wheel = Wheel.new(30,1.25)
puts @wheel.circumference
puts Gear.new(52,11,@wheel).gear_inches