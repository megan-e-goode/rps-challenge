def multi_sign_in_and_play
  visit('/')
  click_button 'MULTIPLAYER MODE'
  fill_in 'name_player1', with: 'Player1'
  fill_in 'name_player2', with: 'Player2'
  click_button 'Submit'
end

def cpu_sign_in_and_play
  visit('/')
  click_button 'CPU MODE'
  fill_in 'name', with: 'Player1'
  click_button 'Submit'
end
