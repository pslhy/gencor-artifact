(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether it follows the sequence given in the patterns list. *)
let rec is_samepatterns (colors : string list) (patterns : string list) : bool =
    match colors with
    | [] -> true
    | _ ->
        let color = List.hd colors in
        let pattern = List.hd patterns in
        if color = "R" || color = "Y" || color = "B" || color = "G" then
            if pattern = "R" || pattern = "Y" || pattern = "B" || pattern = "G" then true else false
        else if color = "w" || color = "d" || color = "p" then
            if pattern = "w" || pattern = "d" || pattern = "p" then true else false
        else false

