let rec all_Characters_Same (s : string) : bool = 
    let rec helper chars (acc : bool) = 
        match chars with
        | [] -> acc
        | x::xs -> 
            if acc && x = s.[0] then helper xs acc 
            else helper xs false 
    in
    helper (List.of_seq (String.to_seq s)) true


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the characters are same or not. *)
