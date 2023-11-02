// The 'rock_paper_scissors' program.
program rock_paper_scissors.aleo {
    // 0u8 - Rock
    // 1u8 - Paper
    // 2u8 - Scissors

    // 0u8 - Draw
    // 1u8 - Player 1 wins
    // 2u8 - Player 2 wins

    mapping wins_count: address => u32;

    transition evaluate(player1: u8, player2: u8) -> u8 {
        assert(player1 < 3u8 && player2 < 3u8);
        let result: u8 = 0u8;
        if (player1 == player2) {
            result = 0u8;
        }
        if (player1 == 0u8) {
            if (player2 == 1u8) {
                result = 2u8;
            }
            else if (player2 == 2u8) {
                result = 1u8;
            }
        }
        if (player1 == 1u8) {
            if (player2 == 0u8) {
                result = 1u8;
            }
            else if (player2 == 2u8) {
                result = 2u8;
            }
        }
        if (player1 == 2u8) {
            if (player2 == 0u8) {
                result = 2u8;
            }
            else if (player2 == 1u8) {
                result = 1u8;
            }
        }
        return result then finalize(self.caller);
    }

    finalize evaluate (caller: address) {
        let wins: u32 = Mapping::get_or_use(wins_count, caller, 0u32);
        Mapping::set(wins_count, caller, wins + 1u32);
    }
}
