let rec text_match_wordz (text : string) : bool = 
    let rec find_z (word : string) : bool = 
        match word with
        | "" -> false
        | c :: rest -> if c = 'z' then true else find_z rest
    in
    let words = Str.split (Str.regexp_string " ") text in
    List.exists find_z words


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a word containing 'z'. *)
