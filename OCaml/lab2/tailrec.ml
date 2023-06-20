(* tailrec.ml - lab set 2, CSci 2041, Summer 2021 *)
(* Alexander Grenier *)

(* Fill in tail-recursive index-sum *)
let index_sum ls =
  let rec loop ls i acc =
    match ls with
    |[] -> acc
    |h::t -> loop t (i+1) (h*i+acc)
  in loop ls 1 0
;;

let rec msort ls = match ls with
  | [] -> []
  | [_] -> ls
  | _ -> (
      let rec split lst (l1,l2) = match lst with
        | [] -> (l1,l2)
        | h::t -> split t (l2,h::l1) in
      let rec merge l1 l2 acc = match (l1,l2) with
        | ([],[]) -> List.rev acc
        | (_,[]) -> List.rev_append acc l1
        | ([], _) -> List.rev_append acc l2
        | (h1::t1, h2::t2) -> if h1 < h2 then merge t1 l2 (h1::acc) else merge t2 l1 (h2::acc) in
      let (l1,l2) = split ls ([],[]) in merge (msort l1) (msort l2) []
    )
;;

let range n m =
  let rec loop acc n m =
    if m = n then
      List.rev acc
    else if n > m then
      []
    else
      loop ( n :: acc ) (n+1) m in
  loop [] n m
;;

(* *@ operator *)
let ( *@ ) : int -> 'a list -> 'a list =
  let rec helper acc n l = [] in fun n ls -> helper [] n ls