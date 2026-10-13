let rec find_adverbs (text : string) : string = 
    let rec find_positions (text : string) (pos : int) : int * int option = 
        let pos' = String.index_opt text ' ' in 
        match pos' with 
            None -> 
                (pos, if String.length text > 2 && text.[String.length text - 3] = 'l' && text.[String.length text - 2] = 'y' then Some pos else None)
            | Some n -> 
                let word = String.sub text pos (n - pos) in 
                if String.length word > 2 && word.[String.length word - 3] = 'l' && word.[String.length word - 2] = 'y' then 
                    (pos, Some n) 
                else 
                    find_positions text n 
    in 
    let pos, pos_opt = find_positions text 0 in 
    match pos_opt with 
        None -> None 
        | Some end_pos -> 
            let adverb = String.sub text pos (end_pos - pos) in 
            Some adverb


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
