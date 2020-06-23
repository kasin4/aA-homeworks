require 'byebug'

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
    @cups = Array.new(14){Array.new}
    # @player2 = Player.new(name2, 2)
    self.place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0...6).each {|i| self.cups[i] += [:stone, :stone, :stone, :stone]}
    (7...13).each {|j| self.cups[j] += [:stone, :stone, :stone, :stone]}
  end

  def valid_move?(start_pos)

    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
    # raise "Starting cup is empty" if @cups[start_pos].empty?
    
    if @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
    # if !(0...6).include?(start_pos) || !(7...13).include?(start_pos)
    #   raise "Invalid starting cup". 
    # end
    

  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []

    cup_idx = start_pos
    



  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
