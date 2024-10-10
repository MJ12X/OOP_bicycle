# create a method to calculate diameters from an array

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

class ObscuringReferences
  attr_reader :data
  def initialize(data)
  @data = data
  end

  def diameters
    data.collect {|cell| cell[0] + (cell[1] * 2)}
  end
end

  wheel_data = [
    [26, 1.5],
    [24, 1.25],
    [20, 1.75]
  ]
  obscuring_references = ObscuringReferences.new(wheel_data)
  diamaters = obscuring_references.diameters
  puts diamaters
  puts Gear.new(52,11,26,1.5).gear_inches
  puts Gear.new(52,11,24,1.25).gear_inches