let rec get_total_number_of_sequences (m : int) (n : int) : int = 
    let rec helper (prev : int) (len : int) : int = 
        if len = 0 then 1
        else 
            let max_val = if 2 * prev > m then m else 2 * prev in
            List.fold_left (fun acc x -> acc + helper x (len - 1)) 0 (List.init (max_val - prev) (fun i -> prev + i + 1))
    in
    helper 1 n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m. *)
