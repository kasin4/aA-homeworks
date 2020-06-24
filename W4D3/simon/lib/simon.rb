
require "byebug"
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
     @sequence_length = 1
     @game_over = false
     @seq = []
   
    #  @seq << COLORS.sample
  end

  def play
    p "To play Simon enter the colors in the order they appear"
    # self.add_random_color
    while !@game_over
      self.take_turn
    end

    self.game_over_message
    self.reset_game

  end

  def take_turn
      # self.add_random_color
      self.show_sequence
      guess = self.require_sequence
      # debugger
      while guess == @seq
        self.round_success_message
        # self.add_random_color
        @sequence_length += 1
        self.show_sequence
        guess = self.require_sequence
      end
      return @game_over = true
  end

  def show_sequence
    self.add_random_color
    @seq.each {|color| puts "\r#{color}     \n"; sleep 1}
  end

  def require_sequence
    p "please enter the sequence of colors in the correct order."
    p "Use spaces to separate colors"
    guess_seq = gets.chomp.split
    # debugger
    return guess_seq
  end

  def add_random_color

    @seq << COLORS.sample

  end

  def round_success_message
    p "Congratulations you have gotten #{self.sequence_length} in a row 👏"

  end

  def game_over_message
    p "Good try it took #{@sequence_length} before you forgot a color"

  end

  def reset_game
    @seq = []
    game_over = false
    @sequence_length = 1
  end
end
