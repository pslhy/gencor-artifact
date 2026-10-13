let rec bell_number (n : int) : int = 
    if n = 0 then 1
    else
        let rec inner (k : int) : int = 
            if k = 0 then 1
            else bell_number (k - 1) + inner (k - 1)
        in
        inner n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
