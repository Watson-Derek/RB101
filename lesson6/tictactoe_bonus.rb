WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
PLAYER_1 = 'Player'
PLAYER_2 = 'Computer'
FIRST_TURN = 'choose'
NUM_WINS = 5

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(array, delimiter = ', ', word = 'or')
  choices = array[0].to_s
  index = 1
  return choices if array.size == 1
  return choices << " #{word} #{array[1]}" if array.size == 2

  loop do
    if index == array.size - 1
      choices << "#{delimiter}#{word} #{array[index]}"
      break
    else
      choices << delimiter + array[index].to_s
      index += 1
    end
  end
  choices
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a squre: #{joinor(empty_squares(brd))}"
    square = gets.chomp
    break if square == square.to_i.to_s &&
             empty_squares(brd).include?(square.to_i)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square.to_i] = PLAYER_MARKER
end

def computer_ai(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2 &&
       brd.values_at(*line).count(PLAYER_MARKER) == 0
      return line[brd.values_at(*line).index(INITIAL_MARKER)]
    end
  end
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 &&
       brd.values_at(*line).count(COMPUTER_MARKER) == 0
      return line[brd.values_at(*line).index(INITIAL_MARKER)]
    end
  end
  nil
end

def computer_places_piece!(brd)
  computer_choice = computer_ai(brd)

  if !computer_choice
    computer_choice = if !computer_choice && empty_squares(brd).include?(5)
                        5
                      else
                        empty_squares(brd).sample
                      end
  end

  brd[computer_choice] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return PLAYER_1
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return PLAYER_2
    end
  end
  nil
end

def place_piece!(brd, player)
  player_places_piece!(brd) if player == PLAYER_1
  computer_places_piece!(brd) if player == PLAYER_2
end

def alternate_player(player)
  player == PLAYER_1 ? PLAYER_2 : PLAYER_1
end

def determine_player(str)
  player = ''
  if str == 'choose'
    loop do
      prompt "Choose first player: p/player or c/computer"
      choice = gets.chomp
      return player << PLAYER_1 if choice.downcase == 'p' ||
                                   choice.downcase == PLAYER_1.downcase
      return player << PLAYER_2 if choice.downcase == 'c' ||
                                   choice.downcase == PLAYER_2.downcase
      prompt "Not a valid choice."
    end
  else
    player = str
  end
end

loop do
  system 'clear'
  prompt "First to #{NUM_WINS} wins is the champion!"
  player_score = 0
  computer_score = 0
  first_player = determine_player(FIRST_TURN)
  loop do
    board = initialize_board
    current_player = first_player

    loop do
      display_board(board)
      prompt "Current score - #{PLAYER_1}: #{player_score}, " \
            "#{PLAYER_2}: #{computer_score}"

      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      game_winner = detect_winner(board)
      prompt "#{game_winner} won!"
      game_winner == PLAYER_1 ? player_score += 1 : computer_score += 1
    else
      prompt "It's a tie!"
    end

    break if player_score == NUM_WINS || computer_score == NUM_WINS
    prompt "Press Enter to start next game."
    gets
  end

  prompt "Final score: #{PLAYER_1} - #{player_score}, " \
         "#{PLAYER_2} - #{computer_score}"
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
