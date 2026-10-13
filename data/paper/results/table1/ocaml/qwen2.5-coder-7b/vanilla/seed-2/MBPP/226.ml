let rec odd_values_string (str : string) : string = 
    let rec helper chars idx acc = 
        match chars with 
        | [] -> String.of_seq (List.rev acc)
        | x :: xs -> 
            if idx mod 2 = 0 then 
                helper xs (idx + 1) (x :: acc)
            else 
                helper xs (idx + 1) acc
    in
    helper (String.to_seq str) 0 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove the characters which have odd index values of a given string. *)
