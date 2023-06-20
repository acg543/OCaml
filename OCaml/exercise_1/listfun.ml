(* listfun.ml - lab exercise 1.4, CSci 2041, Summer 2021 *)
(* Alexander Grenier *)


(* Complete these functions on int lists *)
let rec range n m =
  if n > m then []
  else
    n :: range (n+1) m
;;

let rec sum_positive = function
    [] | [-1] -> 0
  | hd :: ls -> hd + sum_positive ls
;;

let rec list_cat = function
  |[] -> ""
  |h :: t -> h ^ list_cat t
;;

(* Fix this definition *)
let rec take m lst = match (m,lst) with
  | (0, _) -> []
  | (m,[]) -> []
  | (n,h::t) -> h::(take (n-1) t)
;;

(* Perhaps a little trickier *)
let rec unzip  lst =
  match lst with
  |[] -> ([], [])
  |(x,y)::tail ->
      let (first, second) = unzip tail in
      (x::first, y::second)
;;
