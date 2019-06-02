feature 'Enter player name' do
  scenario 'Can submit a form to check name and display on screen' do
    cpu_sign_in_and_play
    expect(page).to have_content("Player1")
  end
end

feature 'Player presented with choices' do
  scenario 'displays a choice of Rock' do
    cpu_sign_in_and_play
    expect(page).to have_content("Rock")
  end

  scenario 'displays a choice of Paper' do
    cpu_sign_in_and_play
    expect(page).to have_content("Paper")
  end

  scenario 'displays a choice of Scissors' do
    cpu_sign_in_and_play
    expect(page).to have_content("Scissors")
  end
end

feature 'Player selects choice' do
  scenario 'can submit player\'s choice' do
    cpu_sign_in_and_play
    click_button('scissors')
    expect(page).to have_content("Your choice: Scissors")
  end
end

feature 'Player wins or loses' do
  scenario 'Player can win, lose or draw' do
    cpu_sign_in_and_play
    click_button('paper')
    expect(page).to have_content(@result)
  end
end

feature 'Player plays again' do
  scenario 'Player can play again' do
    cpu_sign_in_and_play
    click_button('paper')
    click_link('Play again?')
    expect(page).to have_content("What\'s your play?")
  end
end

feature 'Play again as a new game and new player' do
  scenario 'Start new game as new player' do
    cpu_sign_in_and_play
    click_button('paper')
    click_link('New game')
    expect(page).to have_content("What\'s your name?")
  end
end

feature 'Play mode' do
  scenario 'Start in cpu mode' do
    visit('/')
    click_button 'CPU MODE'
    expect(page).to have_content("(CPU MODE)")
  end

  scenario 'Start in multiplayer mode' do
    visit('/')
    click_button 'MULTIPLAYER MODE'
    expect(page).to have_content("(MULTIPLAYER MODE)")
  end
end
