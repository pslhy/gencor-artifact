(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether it follows the sequence given in the patterns list. *)
let rec is_samepatterns (colors : string list) (patterns : string list) : bool =
  if colors = [] then true
  else
    (if List.mem (List.hd colors) patterns = true) then
      is_samepatterns (List.tl colors) patterns
    else false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:50: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_samepatterns (colors : string list) (patterns : string list) : bool =
  if colors = [] then true
  else
    if List.mem (List.hd colors) patterns = true then
      is_samepatterns (List.tl colors) patterns
    else false

