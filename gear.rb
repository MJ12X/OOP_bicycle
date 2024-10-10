# create a class called gear that allows me to find the ratio between chainring/cog

class Gear
  attr_reader :chainring, :cog
  def initialize(chainring,cog)
    @chainring = chainring
    @cog       = cog
  end

  def ratio
    chainring / cog.to_f
  end
end

  puts Gear.new(52,11).ratio
  puts Gear.new(30,27).ratio