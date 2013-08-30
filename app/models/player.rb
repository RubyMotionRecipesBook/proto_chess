class Player < Struct.new(:name, :direction)
  include ModelBase
  
  def initialize(params)
    init_from_params(params)
  end
end