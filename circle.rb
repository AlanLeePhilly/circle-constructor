
# class Circle
#   attr_reader :radius
#
#   def initialize(radius)
#     @radius = radius
#   end
# end

class Circle
  attr_reader :radius

  def initialize(arg)
    if arg.kind_of?(Hash)
      if arg[:radius]
        @radius = arg[:radius]
      elsif arg[:diameter]
        @radius = arg[:diameter].to_f/2
      end
    elsif arg.kind_of?(Fixnum)
      @radius = arg
    end
  end
end
