let rec pell n = match n with
  | 0 -> 0
  | 1 -> 1
  | _ -> 2*(pell (n-1)) + (pell (n-2))

let rec alt4 n = match n with
  | 0 -> 3
  | 1 -> 1
  | 2 -> 4
  | 3 -> 2
  | _ -> 1*(alt4 (n-1)) - (4 * (alt4 (n-2))) + (alt4 (n-3)) - (4 * (alt4 (n-4)))
;;

let memo f = 
  let ft = ref [] in
  fun x -> try List.assoc x !ft with
    | Not_found -> let fx = f x in ft := (x,fx)::!ft; fx
;;

let memopell n =
  let pellt = ref [] in
  let rec mpell n =
    try List.assoc n !pellt with
    | Not_found -> if n = 0 then 0 else if n = 1 then 1 else 
          let fn = 2*(mpell (n-1)) + (mpell (n-2)) in 
          pellt := (n,fn)::!pellt; fn
  in mpell n
;;

let memoalt4 n = 
  let alt4t = ref [] in
  let rec malt4 n =
    try List.assoc n !alt4t with
    | Not_found -> if n = 0 then 3 else if n = 1 then 1 else if n = 2 then 4 else if n = 3 then 2 else
          let fn = 1*(malt4 (n-1)) - (4 * (malt4 (n-2))) + (malt4 (n-3)) - (4 * (malt4 (n-4))) in
          alt4t := (n,fn)::!alt4t; fn
  in malt4 n
;;