(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every odd index contains odd numbers of a given list. *)
let rec odd_position (nums : int list) : bool =
  match nums with
  | [] -> true
  | h :: t ->
    if h % 2 = 0 then
      odd_position t
    else
      odd_position t && h % 2 <> 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:10: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec odd_position (nums : int list) : bool =
  match nums with
  | [] -> true
  | h :: t ->
    if h mod 2 = 0 then
      odd_position t
    else
      odd_position t && h mod 2 <> 0

