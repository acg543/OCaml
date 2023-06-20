module type SSig = sig
  type 'a t
  val push: 'a -> 'a t -> 'a t
  val pop: 'a t -> 'a t
  val top: 'a t -> 'a 
  val empty: 'a t
end 

module Stack: SSig = struct 
  type 'a t = 'a list
  let push x t = x::t
  let pop t = match t with [] -> invalid_arg "pop" | _::t -> t
  let top t = match t with [] -> invalid_arg "top" | h::_-> h
  let empty = []
end

module Nat = struct
  type t = Zero | Next of t
  let rec to_int = function Zero -> 0 | Next n -> 1 + (to_int n)
  let rec of_int = function 0 -> Zero | n -> Next (of_int (n-1))
  let zero = Zero
  let incr = function n -> of_int(1 + to_int n)
  let decr = function Zero -> invalid_arg "decr" | n -> of_int((to_int n) - 1)
end

module type NatSig = sig 
  type t
  val zero: t
  val incr: t -> t
  val decr: t -> t 
end
