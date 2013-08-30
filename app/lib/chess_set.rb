module ChessSet
  class Pieces
    NORTH = 1
    SOUTH = -1
    EAST = 1
    WEST = -1
    
    step_north = Ability.new(:name => :north, :delta_x => 0, :delta_y => NORTH)
    step_south = Ability.new(:name => :south, :delta_x => 0, :delta_y => SOUTH)
    step_east = Ability.new(:name => :east, :delta_x => EAST, :delta_y => 0)
    step_west = Ability.new(:name => :west, :delta_x => WEST, :delta_y => 0)
    step_north_west = Ability.new(:name => :north_west, :delta_x => WEST, :delta_y => NORTH)
    step_south_west = Ability.new(:name => :south_west, :delta_x => WEST, :delta_y => SOUTH)
    step_north_east = Ability.new(:name => :north_east, :delta_x => EAST, :delta_y => NORTH)
    step_south_east = Ability.new(:name => :south_east, :delta_x => EAST, :delta_y => SOUTH)

    @@star = Piece.new(:name => 'Star')
    @@star.abilities << step_north
    @@star.abilities << step_south
    @@star.abilities << step_east
    @@star.abilities << step_west
    @@star.abilities << step_north_west
    @@star.abilities << step_south_west
    @@star.abilities << step_north_east
    @@star.abilities << step_south_east
    
    @@plus = Piece.new(:name => 'Plus')
    @@plus.abilities << step_north
    @@plus.abilities << step_south
    @@plus.abilities << step_east
    @@plus.abilities << step_west
    
    @@cross = Piece.new(:name => 'Cross')
    @@cross.abilities << step_north
    @@cross.abilities << step_south
    @@cross.abilities << step_north_west
    @@cross.abilities << step_south_west
    @@cross.abilities << step_north_east
    @@cross.abilities << step_south_east
    
    @@white_hellion = Piece.new(:name => 'WhiteHellion')
    @@white_hellion.abilities << step_north
    @@white_hellion.abilities << step_south
    @@white_hellion.abilities << step_east
    @@white_hellion.abilities << step_west
    @@white_hellion.abilities << step_north_west
    @@white_hellion.abilities << step_north_east
    
    @@black_hellion = Piece.new(:name => 'BlackHellion')
    @@black_hellion.abilities << step_north
    @@black_hellion.abilities << step_south
    @@black_hellion.abilities << step_east
    @@black_hellion.abilities << step_west
    @@black_hellion.abilities << step_south_west
    @@black_hellion.abilities << step_south_east  
      
    @@white_bird_foot = Piece.new(:name => 'WhiteBirdFoot')
    @@white_bird_foot.abilities << step_north
    @@white_bird_foot.abilities << step_north_west
    @@white_bird_foot.abilities << step_north_east
    
    @@black_bird_foot = Piece.new(:name => 'BlackBirdFoot')
    @@black_bird_foot.abilities << step_south
    @@black_bird_foot.abilities << step_south_west
    @@black_bird_foot.abilities << step_south_east    

    def self.star
      @@star
    end
    
    def self.plus
      @@plus
    end
    
    def self.cross
      @@cross
    end
    
    def self.white_hellion
      @@white_hellion
    end
    
    def self.black_hellion
      @@black_hellion
    end
    
    def self.white_bird_foot
      @@white_bird_foot
    end
    
    def self.black_bird_foot
      @@black_bird_foot
    end
    
  end
end