let rec text_match_two_three (text : string) : bool = 
    let rec find_a (text : string) : bool = 
        match String.index_opt text 'a' with
        | Some i -> 
            let rest = String.sub text (i + 1) (String.length text - i - 1) in
            text_match_two_three rest
        | None -> false in 
    let rec match_b_twice (text : string) : bool = 
        String.length text >= 2 && 
        text.[0] = 'b' && 
        text.[1] = 'b' in 
    let rec match_b_thrice (text : string) : bool = 
        String.length text >= 3 && 
        text.[0] = 'b' && 
        text.[1] = 'b' && 
        text.[2] = 'b' in 
    if find_a text then 
        match_b_twice text || match_b_thrice text 
    else 
        false 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters. *)
