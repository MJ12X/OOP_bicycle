# add a method onto the gear class that allows me to calculate the gear inches to compare bicycles that differ in both gearing and wheel size
#gear inches = wheel diameter * gear ratio
#wheel diameter = rim diameter + twice tire diameter

class Gear
  attr_reader :chainring, :cog, :rim, :tire
  def initialize(chainring,cog,rim,tire)
    @chainring = chainring
    @cog       = cog
    @rim       = rim
    @tire      = tire
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * (rim + (tire * 2))
  end
end

  puts Gear.new(52,11,26,1.5).gear_inches
  puts Gear.new(52,11,24,1.25).gear_inches