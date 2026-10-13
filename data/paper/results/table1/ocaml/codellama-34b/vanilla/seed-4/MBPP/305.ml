let rec start_withp (words : string list) :  string * string = 
    match words with 
    | head :: tail -> 
        (match head.[0] with 
        | 'p' -> 
            let res = start_withp tail in 
            (head, snd res)
        | _ -> start_withp tail)
    | _ -> ("", "") 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return two words from a list of words starting with letter 'p'. *)
