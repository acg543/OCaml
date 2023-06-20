let rev_array a = 
  let helper a init fin =
    a.(init+1) <- a.(fin-1) in
  a 0 ((Array.length a)-1)

let zip_array u v = [||]
