let rec text_match_wordz (text : string) : bool =
    let contains_z =
        let rec contains_z (str : string) : bool =
            if str = "" then
                false
            else if str.[0] = 'z' then
                true
            else
                contains_z (str.[1..])
        in
            contains_z text
    in
        if contains_z then
            true
        else
            false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a word containing 'z'. *)
