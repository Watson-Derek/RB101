SUITS = %w(Hearts Diamonds Spades Clubs)
CARD_VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
FACE_VALUES = { 'J' => 10, 'Q' => 10, 'K' => 10, 'A' => 11 }
FACE_NAMES = { 'J' => 'Jack', 'Q' => 'Queen', 'K' => 'King', 'A' => 'Ace' }
PLAYER = 'Player'
DEALER = 'Dealer'
HIT = %w(h hit)
STAND = %w(s stand)
BLACKJACK = 21

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

  if sum > 21
    sum = aces(hand, sum)
  else
    sum
  end
end

def aces(hand, score)
  return score if score <= 21
  hand.each do |card|
    break if score < 21
    if card[1] == FACE_NAMES.key('Ace')
      score -= 10
    end
  end
  score
end

def busted?(hand)
  score(hand) > 21
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

def list_hands_player_turn(player, dealer)
  prompt "#{DEALER} hand: #{list_dealer_start(dealer)}"
  prompt "#{PLAYER} hand: #{list_hand(player)}"
  prompt "#{PLAYER} score is currently #{score(player)}"
end

def list_hands_dealer_turn(hand)
  prompt "#{DEALER} hand: #{list_hand(hand)}"
  prompt "#{DEALER} score is #{score(hand)}"
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

# Main game loop
loop do
  deck = shuffle_deck

  player_hand = []
  dealer_hand = []

  2.times do
    player_hand << deal_card!(deck)
    dealer_hand << deal_card!(deck)
  end

  loop do
    loop do
      system 'clear'
      list_hands_player_turn(player_hand, dealer_hand)

      player_choice = player_decision

      player_hand << deal_card!(deck) if player_choice == HIT
      break if player_choice == STAND || busted?(player_hand)
    end

    if busted?(player_hand)
      prompt "Player hand: #{list_hand(player_hand)}"
      puts
      prompt "#{score(player_hand)}, Busted! #{DEALER} wins!"
      break
    else
      prompt "You have stood with a score of #{score(player_hand)}"
    end

    loop do
      puts
      list_hands_dealer_turn(dealer_hand)
      dealer_score = score(dealer_hand)
      if dealer_score >= 17
        puts
        break
      else
        dealer_hand << deal_card!(deck)
        prompt "#{DEALER} drawing card"
        sleep 1.5
      end
    end

    if busted?(dealer_hand)
      prompt "#{DEALER} busted with #{score(dealer_hand)}, #{PLAYER} wins!"
      break
    end

    player_score = score(player_hand)
    dealer_score = score(dealer_hand)

    winner = result(player_score, dealer_score)
    display_winner(winner)

    break
  end

  break unless play_again?
end

prompt "Thanks for playing! Good-bye!"
