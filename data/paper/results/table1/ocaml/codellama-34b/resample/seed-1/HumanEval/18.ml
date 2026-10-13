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
    let string_length = String.length string in
    let substring_length = String.length substring in
    if substring_length = 0 then
        0
    else if string_length < substring_length then
        0
    else
        let first_occurence = String.index string substring in
        let rest_string = String.sub string (first_occurence + 1) (string_length - first_occurence - 1) in
        let rest_occurences = how_many_times rest_string substring in
        1 + rest_occurences

