let rec is_Monotonic (a : int list) : bool = 
  let rec helper order = function
    | [] | [_] -> true
    | x::y::rest -> if order x y then helper order (y::rest) else false
  in
  helper (<=) a || helper (>=) a


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list is monotonic or not. *)
