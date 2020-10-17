1. Initialize deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.

Methods:
Initialize Deck
Deal First Cards
Deal New Card - Player
Calculate Score
Reveal Dealer Card
Deal New Card - Dealer

Decistions:
Player Initial Score 21?
Player Hit?
Player Bust?
Computer Hit?
Computer Bust?
Winner or Push?
Play Again?

Display:
Display Win
Display Loss
Display Push

Initialize Deck:
Iterate through a constant of suits, then through a constant of cards, to create a nested array of [[suit, value], suit, value]]

Deal First Cards:
times to iterate is number of players
 -important instead of just 4 times, in case number of players increases

assign player card from a random selection of the deck
- remove that card from the deck using delete
assign dealer card from a random selection of the deck
- remove that card from the deck using delete

display player cards
display dealer cards - hide card 1 (list as 'down'), show card 2


