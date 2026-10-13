(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
let rec remove_length (test_str : string) (k : int) : string =
    let split_str = Str.split (Str.regexp_string " ") test_str in
    let filtered_str = List.filter (fun word -> not (String.length word = k)) split_str in
    String.concat " " filtered_str

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:21: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_length (test_str : string) (k : int) : string =
    let split_str = String.split_on_char ' ' test_str in
    let filtered_str = List.filter (fun word -> not (String.length word = k)) split_str in
    String.concat " " filtered_str

