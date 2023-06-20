type 'a btree = Node of 'a * 'a btree * 'a btree | Empty

let rec length_k lst k = match lst with
  | []->k(0)
  | h::t-> length_k t (fun r -> k (r+1))
;;

let rec find_all_k p lst k = match lst with
  | []->k []
  | h::t -> if (p h) = true then find_all_k p t (fun e -> k(h::e)) 
      else find_all_k p t (fun e -> k(e))
;;

let rec postorder_k t k = match t with
  | Empty -> k []
  | Node (v,lt,rt) -> postorder_k lt (fun ll -> postorder_k rt (fun rr -> k ( ll @ rr @ [v])))
;;

let rec flip_tree_k t k = k Empty
;;