let rec text_match_one (text : string) : bool = 
    let rec match_sequence idx =
        if idx >= String.length text then 
            false
        else if text.[idx] = 'a' then 
            match_sequence (idx + 1)
        else if text.[idx] = 'b' then 
            match_sequence (idx + 1)
        else 
            false
    in
    match_sequence 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by one or more b's. *)
