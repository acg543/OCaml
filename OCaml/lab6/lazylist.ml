type 'a lzlist = LzCons of 'a * 'a lzlist lazy_t | Nil
let (@::) h t = LzCons(h,t) (* "lazy cons operator" *)

let rec lztake n ll = match (n,ll) with
| (0,_) | (_,Nil) -> []
| (_,LzCons(h,t)) -> h::(lztake (n-1) (Lazy.force t))

let rec eq_ll l1 l2 = match (l1,l2) with
| (Nil,Nil) -> true
| (_,Nil) | (Nil,_) -> false
| (LzCons(h1,t1), LzCons(h2,t2)) -> (h1=h2) && (eq_ll (Lazy.force t1) (Lazy.force t2))

let rec lzmerge lst1 lst2 = match (lst1,lst2) with
| (Nil,ll) | (ll,Nil) -> ll
| (LzCons(h1,t1), LzCons(h2,t2)) -> h1 @:: lazy(h2 @:: lazy(lzmerge (Lazy.force t1) (Lazy.force t2)))

let rec lzfilter f = function
| Nil -> Nil
| LzCons(h,lazy(t)) -> if (f h) then h @:: lazy(lzfilter f t)
  else lzfilter f t

let rec lzdouble s = lzmerge s s

let rec lznats n = n @:: lazy(lznats (n+1))

let lzfibs = let rec fibhelp f0 f1 = f0 @:: lazy(fibhelp f1 (f0+f1))
  in fibhelp 0 1

let lzfact = let rec fact_h n a = (n*a) @:: lazy(fact_h (n+1) (n*a))
  in fact_h 1 1

let rec lzrepeat s = s @:: lazy(lzrepeat s)
(* put your lazylist functions right here: *)

let rec lzmap (f : 'a -> 'b) (ll : 'a lzlist) = match ll with
  |LzCons (h,t) -> LzCons (f h, lazy(lzmap f (Lazy.force t)))
  |Nil -> Nil 
;;
let lz_odds (ll : 'a lzlist) = 
  let rec odd_help lll i = match lll with
    |Nil -> Nil
    |LzCons(h,t)->if i mod 2 <> 0 then
          LzCons(h, lazy(odd_help (Lazy.force t) (i+1)))
        else odd_help (Lazy.force t) (i+1)
  in odd_help ll 0
;;
let lz_natpairs ((m,n) : int * int) = Nil
let pal_check (s : string) = false
let lz_bstrings (s1 : string) (s2 : string) = Nil
let lz_palindromes (s1: string) (s2: string) = Nil
