class Piece < Struct.new(:name, :abilities)
  include ModelBase
  
  def initialize(params)
    init_from_params(params)
    self.abilities ||= []
  end
end