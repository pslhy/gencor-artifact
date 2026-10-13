(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Filter an input list of strings only for ones that contain given substring *)
(*     >>> filter_by_substring [] "a" *)
(*     [] *)
(*     >>> filter_by_substring ["abc"; "bacd"; "cde"; "array"] "a" *)
(*     ["abc"; "bacd"; "array"] *)
let rec filter_by_substring (strings : string list) (substring : string) : string list = 
    (* base case: if the list is empty, return an empty list *)
    if strings = [] then
        []
    (* recursively process the list, accumulating the current result in the `filtered` list *)
    else
        let rec loop (strings : string list) (filtered : string list) =
            match strings with
            | [] -> filtered
            | str::rest -> 
                if str contains substring then
                    loop rest (str::filtered)
                else
                    loop rest filtered
        in
        loop strings []

