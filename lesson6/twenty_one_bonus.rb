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

def prompt(msg)
  puts "=> #{msg}"
end

def shuffle_deck
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

def score(hand)
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
    sum = aces(hand, sum)
  else
    sum
  end
end

def aces(hand, score)
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

def result(player, dealer)
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
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def hand_end(player, dealer)
  puts
  prompt "Current score is #{PLAYER}: #{player}, #{DEALER}: #{dealer}"
  puts
  prompt "Press enter to start next hand."
  gets
end

def grand_winner(player, dealer)
  puts
  if player == HANDS_TO_WIN
    prompt "#{PLAYER} wins! " \
    "Final score #{PLAYER}: #{player}, #{DEALER}: #{dealer}."
  else
    prompt "#{DEALER} wins! " \
    "Final score #{DEALER}: #{dealer}, #{PLAYER}: #{player}."
  end
end

# Main game loop
loop do
  system 'clear'
  prompt "First to #{HANDS_TO_WIN} hands won is the winner!"
  prompt "Press enter to begin playing!"
  gets
  player_total = 0
  dealer_total = 0

  loop do
    deck = shuffle_deck

    player_hand = []
    dealer_hand = []

    2.times do
      player_hand << deal_card!(deck)
      dealer_hand << deal_card!(deck)
    end

    player_score = score(player_hand)
    dealer_score = score(dealer_hand)

    loop do
      loop do
        system 'clear'
        list_hands_player_turn(player_hand, dealer_hand, player_score)

        player_choice = player_decision

        player_hand << deal_card!(deck) if player_choice == HIT
        player_score = score(player_hand)
        break if player_choice == STAND || busted?(player_score)
      end

      if busted?(player_score)
        prompt "Player hand: #{list_hand(player_hand)}"
        puts
        prompt "#{player_score}, Busted! #{DEALER} wins!"
        dealer_total += 1
        break
      else
        prompt "You have stood with a score of #{player_score}"
      end

      loop do
        puts
        list_hands_dealer_turn(dealer_hand, dealer_score)
        if dealer_score >= DEALER_STAND
          puts
          break
        else
          dealer_hand << deal_card!(deck)
          dealer_score = score(dealer_hand)
          prompt "#{DEALER} drawing card"
          sleep 1.5
        end
      end

      if busted?(dealer_score)
        prompt "#{DEALER} busted with #{dealer_score}, #{PLAYER} wins!"
        player_total += 1
        break
      end

      winner = result(player_score, dealer_score)
      display_winner(winner)

      case winner
      when PLAYER
        then player_total += 1
      when DEALER
        then dealer_total += 1
      end

      break
    end

    break if player_total == HANDS_TO_WIN || dealer_total == HANDS_TO_WIN

    hand_end(player_total, dealer_total)
  end

  grand_winner(player_total, dealer_total)

  break unless play_again?
end

prompt "Thanks for playing! Good-bye!"
