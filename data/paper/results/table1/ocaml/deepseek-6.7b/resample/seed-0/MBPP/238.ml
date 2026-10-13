(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of non-empty substrings of a given string. *)
let rec number_of_substrings (str : string) : int =
    if String.length str = 0 then 
        0
    else 
        string_length str + number_of_substrings (String.sub str 1 ((String.length str)-1))

let rec string_length (str : string) : int =
    if String.length str = 0 then 
        0
    else 
        1 + string_length (String.sub str 1 ((String.length str)-1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:9: Unbound value "string_length" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec number_of_substrings (str : string) : int =
    if String.length str = 0 then 
        0
    else 
        1 + number_of_substrings (String.sub str 1 ((String.length str)-1))

