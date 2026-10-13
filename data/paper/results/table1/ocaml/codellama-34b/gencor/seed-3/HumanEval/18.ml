
let rec how_many_times (string : string) (substring : string) : int =
    if String.length string <= String.length substring then
        0
    else
        let index = String.index_from string substring 0 in
        if index < 0 then
            0
        else
            1 + how_many_times (String.sub string (index + 1) (String.length string - index - 1)) substring

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Find how many times a given substring can be found in the original string. Count overlaping cases. *)
(*     >>> how_many_times "" "a" *)
(*     0 *)
(*     >>> how_many_times "aaa" "a" *)
(*     3 *)
(*     >>> how_many_times "aaaa" "aa" *)
(*     3 *)
