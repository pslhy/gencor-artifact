
let rec text_match_wordz (text : string) : bool = 
    (*
     * Find the index of the first occurence of 'z' in the given text 
     * Use this index as the starting position and
     * check if the next character is empty or a space
     * If the next character is empty/space, return true
     * Else, return false
     *)
    let index_of_z = String.index text 'z' in
    let is_next_ch_empty_or_space = 
        try let _ = String.get text (index_of_z + 1) in true
        with _ -> false
    in if is_next_ch_empty_or_space then true
       else false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a word containing 'z'. *)
