let rec how_many_times (string : string) (substring : string) : int =
    let len = String.length string in
    let sublen = String.length substring in
    let rec loop acc i =
        if i + sublen <= len then
            if String.sub string i sublen = substring then
                loop (acc + 1) (i + 1)
            else
                loop acc (i + 1)
        else
            acc
    in
    loop 0 0


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
