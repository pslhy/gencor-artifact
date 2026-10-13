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
    let rec find_substring (index : int) : int = 
        if index + String.length substring > String.length string then
            0
        elif String.sub string index (String.length substring) = substring then
            1 + find_substring (index + 1)
        else
            find_substring (index + 1)
    in
    if String.length substring = 0 then
        0
    else
        find_substring 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:76: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec how_many_times (string : string) (substring : string) : int = 
    let rec find_substring (index : int) : int = 
        if index + String.length substring > String.length string then
            0
        else if String.sub string index (String.length substring) = substring then
            1 + find_substring (index + 1)
        else
            find_substring (index + 1)
    in
    if String.length substring = 0 then
        0
    else
        find_substring 0

