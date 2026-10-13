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
    if string = "" || substring = "" then
        0
    else
        let length = String.length substring in
        let rec loop count idx =
            if idx + length > String.length string then
                count
            else
                if String.sub string idx length = substring then
                    loop (count + 1) (idx + 1)
                else
                    loop count (idx + 1)
        in
        loop 0 0

