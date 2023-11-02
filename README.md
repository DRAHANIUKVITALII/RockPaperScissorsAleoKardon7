# Rock Paper Scissors on Aleo 🎮

This project is a simple implementation of the classic game "Rock, Paper, Scissors" written in Leo for the Aleo blockchain. It's designed to demonstrate the use of smart contracts for stateful games.

## Items and Result IDs 🆔

In the game, the choices and results are represented as follows:

- `0u8`: Rock 🪨
- `1u8`: Paper 📜
- `2u8`: Scissors ✂️

Results of a game:

- `0u8`: Draw
- `1u8`: Player 1 wins
- `2u8`: Player 2 wins

## Wins Counter 🏆

The contract keeps track of the number of wins per player with the line:

```Mapping::set(wins_count, caller, wins + 1u32);```

## How to Play 🕹️

Run the game using the Leo CLI:

```bash
leo execute
```

To play the game, simply provide the choice IDs for each player:
```bash
leo execute evaluate {player1_choice} {player2_choice}
```

The game will automatically evaluate the winner and update the win count on the blockchain for the calling address.
