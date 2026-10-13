let rec is_Monotonic (a : int list) : bool =
  match a with
  | [] -> true
  | x :: [] -> true
  | x :: y :: tail -> if x <= y then is_Monotonic (y :: tail) else if x >= y then is_Monotonic (y :: tail) else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list is monotonic or not. *)
