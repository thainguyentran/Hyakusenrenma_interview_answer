class PokerHandApp
	CARD_SUIT = ['H', 'S', 'C', 'D']

	CARD_RANK = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']

	#4 Cards, Full House, 3 Cards, 2 Pairs, 1 Pair
	POKER_HAND = ['4C', 'FH', '3C', '2P', '1P']

	def print_poker_hand(cards)
		rank_count = Hash.new
    	for rank in CARD_RANK
    		if cards.include? rank.to_s
    			rank_count[rank] = cards.count(rank.to_s)
    		end
    	end
    	max_card = rank_count.values.max
    	min_card = rank_count.values.min

    	if max_card == 4
    		puts POKER_HAND[0]
    	elsif max_card == 3
    		if min_card == 2
    			puts POKER_HAND[1]
    		else puts POKER_HAND[2]
    		end
    	elsif max_card == 2
    		if rank_count.length > 3
    			puts POKER_HAND[4]
    		else puts POKER_HAND[3]
    		end
    	else puts "Not a poker hand"
    	end

	end
end

puts "Enter your card string: "
vals = gets
poker_hand_obj = PokerHandApp.new
poker_hand_obj.print_poker_hand(vals)
