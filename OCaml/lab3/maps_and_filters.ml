let fixduck ls = 
  let help str = match str with
    | "goose" -> "grey duck" 
    | s -> if s = "duck" then s else s^" duck" in 
  List.map help ls
;;

                                  
let de_parenthesize = List.filter (function
    | '(' | ')' -> false
    | _ -> true)
;;


let p_hack = List.filter (fun (p, s) -> p < 0.05)
;;