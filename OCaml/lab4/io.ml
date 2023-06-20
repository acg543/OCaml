let uncomment f =
  let ic = open_in f in
  let rec make_list acc = (* the "really" tail-recursive way *)
    match (try Some (input_line ic) with End_of_file -> None) with
    | None -> let () = close_in ic in List.rev acc
    | Some l -> make_list (l::acc)
  in let lst = make_list [] in
  let helper =
  	List.map (fun str ->
  		if (String.contains str '#') then
  		let idx = String.index str '#' in String.sub str 0 idx else str
  	)
in helper lst
;;

let tabulate lst fname = 
  let oc = open_out fname in
  let () = List.iter (fun(m,n) -> Printf.printf "%5.2e\n" (m n)) lst in
		close_out oc