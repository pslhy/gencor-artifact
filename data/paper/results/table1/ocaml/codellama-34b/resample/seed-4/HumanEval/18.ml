(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Find how many times a given substring can be found in the original string. Count overlaping cases. *)
(*     >>> how_many_times "" "a" *)
(*     0 *)
(*     >>> how_many_times "aaa" "a" *)
(*     3 *)
(*     >>> how_many_times "aaaa" "aa" *)
(*     3 *)
let rec how_many_times (string : string) (substring : string) : int =
    if string = "" || substring = "" then 0
    else let (first, rest) = String.split_on_char substring.[0] string
        1 + how_many_times rest substring

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec how_many_times (string : string) (substring : string) : int =
    if string = "" || substring = "" then 0
    else let (first, rest) = String.split_on_char substring.[0] string
        1 + how_many_times rest substring

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec how_many_times (string : string) (substring : string) : int =
  if String.length string < String.length substring then 0
  else
    let prefix = String.sub string 0 (String.length substring) in
    if prefix = substring then 1 + how_many_times (String.sub string 1 (String.length string - 1)) substring
    else how_many_times (String.sub string 1 (String.length string - 1)) substring

