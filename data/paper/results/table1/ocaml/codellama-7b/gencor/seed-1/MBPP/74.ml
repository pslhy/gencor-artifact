
let rec is_samepatterns (colors : string list) (patterns : string list) : bool =
match patterns with
| [] -> true
| h::t -> List.mem h colors && is_samepatterns (List.remove_assoc h colors) t

let is_validsequence (colors : string list) (patterns : string list) : bool =
List.length colors = List.length patterns && is_samepatterns colors patterns

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether it follows the sequence given in the patterns list. *)
