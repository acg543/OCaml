type suit = Hearts | Diamonds | Spades | Clubs
type value = Simple of int | King | Ace | Queen | Jack
type card = { suit : suit; value : value }

let rec trick_winner_trump (cards : card list) (trump: suit option) =
  match cards with
  |h::next::t->
      if trump = None && h.value > next.value then next
      else if trump = None && h.value < next. value then h
      else if trump = Some Diamonds then next
      else h
  |h::t -> h 
