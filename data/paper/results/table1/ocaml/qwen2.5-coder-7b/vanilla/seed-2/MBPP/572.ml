let rec two_unique_nums (nums : int list) : int list = 
    let rec helper seen result = 
        match nums with
        | [] -> List.rev result
        | x::xs -> 
            if List.mem x seen 
            then helper seen result xs
            else helper (x::seen) (x::result) xs
    in helper [] []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove duplicate numbers from a given number of lists. *)
