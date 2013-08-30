class Man < Struct.new(:piece, :player, :x, :y, :abilities)
  include ModelBase

  def initialize(params)
    init_from_params(params)
    self.abilities ||= []
    clone_abilities
  end
  
  def clone_abilities
    self.piece.abilities.each do |ability|
      add_ability(ability.dup)
    end
  end
end