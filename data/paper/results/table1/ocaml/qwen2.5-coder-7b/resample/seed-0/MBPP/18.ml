(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove characters from the first string which are present in the second string. *)
let rec remove_dirty_chars (string : string) (second_string : string) : string = 
  let is_clean char = 
    not (String.contains second_string char) in
  String.filter is_clean string

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:3: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_dirty_chars (string : string) (second_string : string) : string = 
  let is_clean char = 
    not (String.contains second_string char) in
  let clean_string = ref "" in
  String.iter (fun char -> if is_clean char then clean_string := !clean_string ^ Char.escaped char) string;
  !clean_string

