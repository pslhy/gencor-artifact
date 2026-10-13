let rec solution (lst : int list) : int = 
    let rec sum_odds acc lst pos = 
        match lst with 
        | [] -> acc 
        | x::xs -> 
            if pos mod 2 = 0 && x mod 2 <> 0 then 
                sum_odds (acc + x) xs (pos + 1) 
            else 
                sum_odds acc xs (pos + 1) 
    in 
    sum_odds 0 lst 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions. *)
(*     Examples *)
(*     >>> solution [5; 8; 7; 1] *)
(*     12 *)
(*     >>> solution [3; 3; 3; 3; 3] *)
(*     9 *)
(*     >>> solution [30; 13; 24; 321] *)
(*     0 *)
