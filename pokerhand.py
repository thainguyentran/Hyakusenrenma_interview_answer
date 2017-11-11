"""A program that output the poker hand based on the input string from the user"""
#Heart, Spade, Cub, Diamond
CARD_SUIT = ['H', 'S', 'C', 'D']

CARD_RANK = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']

#4 Cards, Full House, 3 Cards, 2 Pairs, 1 Pair
POKER_HAND = ['4C', 'FH', '3C', '2P', '1P']

def print_poker_hand(cards):
    """function to print poker hand"""
    rank_count = {}
    for rank in CARD_RANK:
        if str(rank) in cards:
            rank_count[rank] = cards.count(str(rank))

    max_card = max(rank_count.values())
    min_card = min(rank_count.values())
    if max_card == 4:
        print POKER_HAND[0]
    elif max_card == 3:
        if min_card == 2:
			print POKER_HAND[1]
        else: print POKER_HAND[2]
    elif max_card == 2:
		if len(rank_count) > 3:
			print POKER_HAND[4]
		else: print POKER_HAND[3]
    else: print 'Not a poker hand'

print_poker_hand(raw_input("your cards string: "))
