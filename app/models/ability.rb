class Ability < Struct.new(:name, :delta_x, :delta_y)
  include ModelBase
  
  def initialize(params)
    init_from_params(params)
  end
end