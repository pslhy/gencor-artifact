(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether it follows the sequence given in the patterns list. *)
let rec is_samepatterns (colors : string list) (patterns : string list) : bool =
  match (colors, patterns) with
  | (color :: colors, pattern :: patterns) -> if color = pattern then is_samepatterns colors patterns else false
  | (_, _) -> true

let is_validpattern str =
  let colors = List.map (String.lowercase) (String.split_on_char ',' str) in
  let patterns = List.map (String.lowercase) (String.split_on_char ' ' "BGRI") in
  is_samepatterns colors patterns

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:26: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_samepatterns (colors : string list) (patterns : string list) : bool =
  match (colors, patterns) with
  | (color :: colors, pattern :: patterns) -> if color = pattern then is_samepatterns colors patterns else false
  | (_, _) -> true

