(* hostinfo, the "name" of a computer connected to the Internet *)
type hostinfo = IP of int*int*int*int | DNSName of string

(* Here's where your definition of tld goes: *)
let tld (addr : hostinfo) : string option =
  match (addr : hostinfo) with
  | IP (a,b,c,d) -> None
  | DNSName str -> let str2 = str^"p" in
      Some
        (String.sub str2 ((String.rindex str2 'p')-3) ((String.length str2)-(String.rindex str2 '.')-2))
;;
