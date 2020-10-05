require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
FIRST_TURN = 'choose'

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
  choices = "Choose a square: #{array[0]}"
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
    prompt joinor(empty_squares(brd))
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_ai(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2 &&
       brd.values_at(*line).count(PLAYER_MARKER) == 0
      return line[brd.values_at(*line).index(' ')]
    end
  end
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 &&
       brd.values_at(*line).count(COMPUTER_MARKER) == 0
      return line[brd.values_at(*line).index(' ')]
    end
  end
  nil
end

def computer_places_piece!(brd)
  if computer_ai(brd)
    brd[computer_ai(brd)] = COMPUTER_MARKER
  elsif empty_squares(brd).include?(5)
    brd[5] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
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
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def place_piece!(brd, player)
  player_places_piece!(brd) if player == 'player'
  computer_places_piece!(brd) if player == 'computer'
end

def alternate_player(player)
  return 'player' if player == 'computer'
  'computer'
end

def determine_first_player(string)
  player = ''
  if string == 'choose'
    loop do
      prompt "Choose first player: p/player or c/computer"
      choice = gets.chomp
      return player << 'player' if choice.downcase.start_with?('p')
      return player << 'computer' if choice.downcase.start_with?('c')
      prompt "Not a valid choice."
    end
  else
    player = string
  end
end

loop do
  prompt "First to 5 wins is the champion!"
  player_score = 0
  computer_score = 0
  first_player = determine_first_player(FIRST_TURN)
  loop do
    board = initialize_board
    current_player = first_player

    loop do
      display_board(board)
      prompt "Current score - Player: #{player_score}, " \
            "Computer: #{computer_score}"

      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      player_score += 1 if detect_winner(board) == 'Player'
      computer_score += 1 if detect_winner(board) == 'Computer'
    else
      prompt "It's a tie!"
    end

    break if player_score == 5 || computer_score == 5
    prompt "Press Enter to start next game."
    gets
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
