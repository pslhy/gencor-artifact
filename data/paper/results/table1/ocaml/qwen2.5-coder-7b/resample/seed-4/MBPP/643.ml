(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that checks if a strings contains 'z', except at the start and end of the word. *)
let rec text_match_wordz_middle (text : string) : bool = 
  let rec helper chars found = 
    match chars with 
    | [] -> found
    | 'z' :: 'z' :: rest -> helper rest true
    | 'z' :: rest -> helper rest found
    | _ :: rest -> helper rest found
  in
  let stripped = String.trim text in
  not (String.length stripped = 1) && helper (String.to_list stripped) false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:47: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_wordz_middle (text : string) : bool = 
  let rec helper chars found = 
    match chars with 
    | [] -> found
    | 'z' :: 'z' :: rest -> helper rest true
    | 'z' :: rest -> helper rest found
    | _ :: rest -> helper rest found
  in
  let stripped = String.trim text in
  not (String.length stripped = 1) && helper (List.of_seq (String.to_seq stripped)) false

