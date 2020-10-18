SUITS = %w(Hearts Diamonds Spades Clubs)
CARD_VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
FACE_VALUES = { 'J' => 10, 'Q' => 10, 'K' => 10, 'A' => 11 }
FACE_NAMES = { 'J' => 'Jack', 'Q' => 'Queen', 'K' => 'King', 'A' => 'Ace' }
PLAYER = 'Player'
DEALER = 'Dealer'
HIT = %w(h hit)
STAND = %w(s stand)
WINNING_SCORE = 21
DEALER_STAND = 17
ACE_SUBTRACT = 10
HANDS_TO_WIN = 5
VALID_ANSWERS = %w(y yes n no)
VALID_YES = %w(y yes)

def prompt(msg)
  puts "=> #{msg}"
end

def create_deck
  new_deck = []
  SUITS.each do |face|
    CARD_VALUES.each do |value|
      new_deck << [face, value]
    end
  end
  new_deck
end

def deal_card!(deck)
  card = deck.sample
  deck.delete(card)
  card
end

def hand_sum(hand)
  sum = 0

  hand.each do |card|
    value = card[1]
    sum = if value == value.to_i.to_s
            sum + value.to_i
          else
            sum + FACE_VALUES[value]
          end
  end

  if sum > WINNING_SCORE
    sum = correct_for_aces(hand, sum)
  else
    sum
  end
end

def correct_for_aces(hand, score)
  return score if score <= WINNING_SCORE
  hand.each do |card|
    break if score < WINNING_SCORE
    if card[1] == FACE_NAMES.key('Ace')
      score -= ACE_SUBTRACT
    end
  end
  score
end

def busted?(hand)
  hand > WINNING_SCORE
end

def player_busted(hand, sum, hash)
  prompt "#{PLAYER} hand: #{list_hand(hand)}"
  puts
  prompt "#{sum}, Busted! #{DEALER} wins!"
  hash[:dealer] += 1
end

def dealer_busted(sum, hash)
  prompt "#{DEALER} busted with #{sum}, #{PLAYER} wins!"
  hash[:player] += 1
end

def join_and(array, delimiter = ', ', word = 'and')
  return array.join(" #{word} ") if array.size == 2

  hand_desc = ''
  index = 0
  loop do
    if index == array.size - 1
      hand_desc << word + ' ' + array[index]
      break
    else
      hand_desc << array[index] + delimiter
      index += 1
    end
  end
  hand_desc
end

def list_hand(hand)
  hand_array = []
  hand.each do |_suit, value|
    hand_array << if value.to_i.to_s == value
                    value
                  else
                    FACE_NAMES[value]
                  end
  end
  join_and(hand_array)
end

def list_dealer_start(hand)
  hand_array = ['Hidden', hand[1][1]]
  join_and(hand_array)
end

def list_hands_player_turn(player, dealer, score)
  system 'clear'
  prompt "#{DEALER} hand: #{list_dealer_start(dealer)}"
  prompt "#{PLAYER} hand: #{list_hand(player)}"
  prompt "#{PLAYER} score is currently #{score}"
end

def list_hands_dealer_turn(hand, score)
  prompt "#{DEALER} hand: #{list_hand(hand)}"
  prompt "#{DEALER} score is #{score}"
end

def player_decision
  loop do
    prompt "h/Hit or s/Stand?"
    choice = gets.chomp
    return HIT if HIT.include?(choice)
    return STAND if STAND.include?(choice)
    prompt "Invalid Selection."
  end
end

def dealer_draw_card(hand, deck)
  hand << deal_card!(deck)
  prompt "#{DEALER} drawing card"
  sleep 1.5
end

def detect_round_winner(player, dealer)
  if player > dealer
    PLAYER
  elsif dealer > player
    DEALER
  end
end

def display_winner(winner)
  if winner
    prompt "#{winner} is the winner!"
  else
    prompt "It's a tie!"
  end
end

def play_again?
  puts
  answer = ''
  loop do
    prompt "Do you want to play again? (y/yes or n/no)"
    answer = gets.chomp
    break if VALID_ANSWERS.include?(answer.downcase)
    prompt "Not a valid answer."
  end
  VALID_YES.include?(answer.downcase)
end

def display_running_scoore(player, dealer)
  puts
  prompt "Current score is #{PLAYER}: #{player}, #{DEALER}: #{dealer}"
  puts
  prompt "Press enter to start next hand."
  gets
end

def add_to_running_score(winner, score_hash)
  case winner
  when PLAYER
    then score_hash[:player] += 1
  when DEALER
    then score_hash[:dealer] += 1
  end
end

def display_grand_winner(player, dealer)
  puts
  if player == HANDS_TO_WIN
    prompt "#{PLAYER} wins! " \
    "Final score #{PLAYER}: #{player}, #{DEALER}: #{dealer}."
  else
    prompt "#{DEALER} wins! " \
    "Final score #{DEALER}: #{dealer}, #{PLAYER}: #{player}."
  end
end

def display_welcome_information
  system 'clear'
  prompt "Welcome to the Twenty One game!"
  prompt "First to #{HANDS_TO_WIN} hands won is the winner!"
  prompt "Press enter to begin playing!"
  gets
end

# Main game loop
loop do
  display_welcome_information

  total_scores = { player: 0, dealer: 0 }

  loop do
    deck = create_deck

    player_hand = []
    dealer_hand = []

    2.times do
      player_hand << deal_card!(deck)
      dealer_hand << deal_card!(deck)
    end

    player_hand_sum = hand_sum(player_hand)
    dealer_hand_sum = hand_sum(dealer_hand)

    loop do
      loop do
        list_hands_player_turn(player_hand, dealer_hand, player_hand_sum)

        player_choice = player_decision

        player_hand << deal_card!(deck) if player_choice == HIT
        player_hand_sum = hand_sum(player_hand)
        break if player_choice == STAND || busted?(player_hand_sum)
      end

      if busted?(player_hand_sum)
        player_busted(player_hand, player_hand_sum, total_scores)
        break
      else
        prompt "You have stood with a score of #{player_hand_sum}"
      end

      loop do
        puts
        list_hands_dealer_turn(dealer_hand, dealer_hand_sum)
        if dealer_hand_sum >= DEALER_STAND
          puts
          break
        else
          dealer_draw_card(dealer_hand, deck)
          dealer_hand_sum = hand_sum(dealer_hand)
        end
      end

      if busted?(dealer_hand_sum)
        dealer_busted(dealer_hand_sum, total_scores)
        break
      end

      winner = detect_round_winner(player_hand_sum, dealer_hand_sum)
      display_winner(winner)

      add_to_running_score(winner, total_scores)

      break
    end

    break if total_scores.any? { |_key, value| value == 5 }

    display_running_scoore(total_scores[:player], total_scores[:dealer])
  end

  display_grand_winner(total_scores[:player], total_scores[:dealer])

  break unless play_again?
end

prompt "Thanks for playing! Good-bye!"
