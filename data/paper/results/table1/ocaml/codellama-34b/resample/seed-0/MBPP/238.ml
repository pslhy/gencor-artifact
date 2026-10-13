(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of non-empty substrings of a given string. *)
let rec number_of_substrings (str : string) : int =
    if str = "" then 0
    else if str.[0] = ' ' then number_of_substrings (String.sub str 1 (String.length str - 1))
    else String.count str ' ' + 1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:10: Unbound value "String.count" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec number_of_substrings (str : string) : int =
    if str = "" then 0
    else if str.[0] = ' ' then number_of_substrings (String.sub str 1 (String.length str - 1))
    else String.length str - String.length (String.sub str 1 (String.length str - 1))

