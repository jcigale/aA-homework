class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    while !@game_over
      take_turn
      system("clear")
    end

    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    while !@game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep 0.5
      system("clear")
      sleep 0.5
    end
  end

  def require_sequence
    puts "Enter each color of the sequence"
    @seq.each do |color|
      user_color = gets.chomp
      if color[0] != user_color
        @game_over = true
        break
      end
    end
    sleep 0.25
  end

  def add_random_color
    self.seq << COLORS.shuffle[0]
  end

  def round_success_message
    'Its been rounded'
  end

  def game_over_message
    'The game is over'
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
