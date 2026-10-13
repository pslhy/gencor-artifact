let rec text_lowercase_underscore (text : string) : bool = 
    let rec loop chars = 
        match chars with 
        | [] | [_] -> true 
        | '_' :: residual -> loop residual 
        | x :: y :: residual -> 
            if (x >= 'A' && x <= 'Z') || (y >= 'A' && y <= 'Z') || (x = '_' || y = '_') 
            then false 
            else loop (y :: residual) 
    in 
    loop (List.of_seq (String.to_seq text))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
