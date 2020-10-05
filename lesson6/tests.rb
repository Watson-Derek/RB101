def alternate_player(player)
  return 'player' if player == 'computer'
  'computer'
end

p alternate_player('player')
p alternate_player('computer')