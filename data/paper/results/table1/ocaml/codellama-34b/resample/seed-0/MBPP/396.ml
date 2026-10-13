(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given string starts and ends with the same character or not. *)
let rec check_char (string : string) : string =
    if (string.[0] == string.[String.len - 1]) then "Yes" else "No"

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:31: Unbound value "String.len" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_char (string : string) : string =
    if (string.[0] == string.[string.length - 1]) then "Yes" else "No"

