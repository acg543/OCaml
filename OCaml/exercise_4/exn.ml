exception Reflect of int

let reflector x = raise (Reflect x);;
let catcher r x = match x with
    y->y
;;

let make_opt f e y = try Some (f y ) with e -> None
;;
let rec safe_substr s b l = if b >= 0 && l>=0 then (String.sub s b l)
  else raise (Invalid_argument "");;

let rec rm_assoc_exit k lst = List.remove_assoc k lst

let rm_assoc k lst = try rm_assoc_exit k lst with Exit -> lst
