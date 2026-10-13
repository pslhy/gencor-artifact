(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to replace whitespaces with an underscore and vice versa in a given string. *)
let rec replace_spaces (text : string) : string = 
  let rec helper (chars : char list) : char list = 
    match chars with 
    | [] -> []
    | ' ' :: rest -> '_' :: helper rest
    | '_' :: rest -> ' ' :: helper rest
    | char :: rest -> char :: helper rest
  in 
  String.of_char_list (helper (String.to_list text))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:3: Unbound value "String.of_char_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec replace_spaces (text : string) : string = 
  let rec helper (chars : char list) : char list = 
    match chars with 
    | [] -> []
    | ' ' -> '_'
    | '_' -> ' '
    | char -> char
  in 
  let new_chars = List.map helper (String.to_seq text) in
  String.of_seq new_chars

