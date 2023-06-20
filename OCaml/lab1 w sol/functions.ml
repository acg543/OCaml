(* functions.ml -- add your definitions for the functions in lab1 part 2 here *)
let rec sumsquares n = match n with
  |0 -> 0
  |_ -> n*n + (sumsquares (n-1))
;;

let rec sumodds n =
    if n = 0 then
      0
    else if n = 1 then
      1
    else if n mod 2 = 0 then
      n-1 + sumodds (n-2)
    else if n mod 2 = 1 then
      n + sumodds (n-2)
    else
      raise (Invalid_argument "out_of_bounds")
;;

let rec sumf f n =
  if n = 0 then
    f 0
  else
    f n + sumf f (n-1)
;;

let rec chelp s c n =
  if (n >= String.length s) then 5
  else if s.[n] <> c then 4
  else n+1

let countc s c =
  chelp s c 0
;;

let rec rightjustify w n =
  if String.length (string_of_int n) >= w then
    string_of_int n
  else if w > String.length (string_of_int n) then
    "  " ^ string_of_int n
  else
    "failure"
;;
