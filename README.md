## ufo_the_game
```
                 .
                 |
              .-"^"-.
             /_....._\
         .-"`         `"-.
        (  ooo  ooo  ooo  )
         '-.,_________,.-'   ,-----------.
               /   \        (  Send help! )
              /     \      / `-----------'
             /   O   \    /
            /  --|--  \
           /     |     \
          /     / \     \
```

Invaders from outer space have arrived and are abducting humans using tractor beams. Earn your medal of honor by cracking the codeword to stop the abduction!

This project was done as a take home challenge.

## Playing the Game
1. Clone down the repo:

` git clone https://github.com/tmaria17/ufo_the_game`

2. Navigate to the root directory and run
`ruby lib/runner.rb`
3. Play the game!
4. If you lose or win you will have the option of playing again by entering Y or N.

Example of game play:
```

Welcome Earthling to UFO: The Game.

Instructions: save us from alien abduction by guessing letters in the codeword.
                 .
                 |
              .-"^"-.
             /_....._\
         .-"`         `"-.
        (  ooo  ooo  ooo  )
         '-.,_________,.-'
              /     \
             /       \
            /    O    \
           /   --|--   \
          /      |      \
         /      / \      \
Codeword: _ _ _ _ _ _
Please enter your guess:
a
Correct! You're closer to cracking the codeword.
                 .
                 |
              .-"^"-.
             /_....._\
         .-"`         `"-.

        (  ooo  ooo  ooo  )
         '-.,_________,.-'
              /     \
             /       \
            /    O    \
           /   --|--   \
          /      |      \
         /      / \      \
Codeword: _ a _ _ _ a _
Incorrect Guesses:
Please enter your guess:
Please enter your guess:
z
Incorrect! The tractor beam pulls the person in further.
                 .
                 |
              .-"^"-.
             /_....._\
         .-"`         `"-.
        (  ooo  ooo  ooo  )

         '-.,_________,.-'
              /     \
             /   O   \
            /  --|--  \
           /     |     \
          /     / \     \
         /               \
Codeword: _ a _ _ _ a _
Incorrect Guesses: z
Please enter your guess:
 ```
## Prerequisites/ Dependencies
This project assumes you have installed:
* Ruby 2.4.1
* Minitest

## Running the tests
 To run a test run from the command line:
  `ruby test/name_of_test`
## Known Issues/To Do
  * Bonus- Display how many words in the provided dictionary are potentially correct codewords given the correct and incorrect letter guesses made so far.

## Contributors
[Maria Torres](https://github.com/tmaria17)
