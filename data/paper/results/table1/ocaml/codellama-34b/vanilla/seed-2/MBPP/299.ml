let rec max_aggregate (stdata :  (string * int) list) :  string * int =
    match stdata with
        | [] -> None 
        | (x, y):: rest -> 
            let (_, z) = max_aggregate rest
            if y >= z then (x, y) else (x, z)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the maximum aggregate from the list of tuples. *)
