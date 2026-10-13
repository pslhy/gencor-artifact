
let rec get_ludic (n : int) : int list = 
    (* base case: exit if n <= 0 *)
    let rec ludic (n : int) : int list = 
        if n <= 0 then 
            [] 
        else 
            let half = n / 2 in
            if n mod 2 == 0 then 
                n :: get_ludic (n-1)
            else
                n :: get_ludic (n+1)
    (* helper function to get all lucid numbers smaller than or equal to n *)
    in get_ludic n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
