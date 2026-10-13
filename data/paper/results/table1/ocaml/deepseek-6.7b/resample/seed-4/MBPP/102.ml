(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
let rec snake_to_camel (word : string) : string =
  match String.index_opt word '_' with
  | None -> word
  | Some i -> 
    let first_part = String.sub word 0 i in
    let rest = String.sub word (i+1) (String.length word - i -1) in
    String.lowercase_ascii (first_part ^ (String_ext.capitalize_ascii rest))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:43: Unbound module "String_ext" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
  match String.index_opt word '_' with
  | None -> word
  | Some i -> 
    let first_part = String.sub word 0 i in
    let rest = String.lowercase_ascii (String.sub word (i+1) (String.length word - i -1)) in
    String.concat "" [first_part; String.capitalize_ascii rest]

