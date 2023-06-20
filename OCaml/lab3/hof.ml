let rec drop_until f lst = match lst with
    [] -> []
  | h::t -> if (f h) = true then lst else drop_until f t
;;

let rec take_while f lst = match lst with
    [] -> []
  | h::t -> if (f h) = true then h::(take_while f t) else []
;;

let rec take_until f lst = match lst with
    [] -> []
  | h::t -> if (f h) = false then h::(take_until f t) else []
;;