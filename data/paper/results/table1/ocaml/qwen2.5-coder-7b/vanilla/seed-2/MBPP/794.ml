let rec text_starta_endb (text : string) : bool = 
    let rec loop chars = 
        match chars with 
        | [] | [_] -> false 
        | 'a' :: rest -> 
            let rec after_a chars = 
                match chars with 
                | [] -> false 
                | 'b' :: [] -> true 
                | 'b' :: _ -> false 
                | _ :: tail -> after_a tail 
            in after_a rest 
        | _ :: tail -> loop tail 
    in loop (List.of_seq (String.to_seq text))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'. *)
