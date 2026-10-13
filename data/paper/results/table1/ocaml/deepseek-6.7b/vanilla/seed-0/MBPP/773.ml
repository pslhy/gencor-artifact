let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
    let rec loop i j found =
        if i > String.length text - String.length pattern then
            (pattern, j, None)
        else if j = String.length pattern then
            loop (i + 1) 0 (Some i)
        else if text.[i + j] = pattern.[j] then
            loop i (j + 1) found
        else
            loop (i + 1) 0 found
    in loop 0 0 None;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
