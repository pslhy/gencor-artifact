(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list is monotonic or not. *)
let rec is_Monotonic (a : int list) : bool = 
  let rec increasing acc = function
    | [] | [_] -> true
    | x::y::rest -> if x > y then false else increasing (x::acc) (y::rest)
  and decreasing acc = function
    | [] | [_] -> true
    | x::y::rest -> if x < y then false else decreasing (x::acc) (y::rest)
  in
  increasing acc a || decreasing acc a

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:14: Unbound value "acc" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_Monotonic (a : int list) : bool = 
  let rec increasing = function
    | [] | [_] -> true
    | x::y::rest -> if x > y then false else increasing (y::rest)
  and decreasing = function
    | [] | [_] -> true
    | x::y::rest -> if x < y then false else decreasing (y::rest)
  in
  increasing a || decreasing a

