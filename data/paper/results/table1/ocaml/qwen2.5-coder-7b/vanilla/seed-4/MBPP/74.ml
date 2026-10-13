let rec is_samepatterns (colors : string list) (patterns : string list) : bool = 
  match (colors, patterns) with
  | ([], []) -> true
  | (c::cs, p::ps) when c = p -> is_samepatterns cs ps
  | _ -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether it follows the sequence given in the patterns list. *)
