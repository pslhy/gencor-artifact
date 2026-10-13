
let rec get_total_number_of_sequences (m : int) (n : int) : int = 
    let rec helper (cur : int) (rem : int) : int = 
        if rem = 0 then 
            1 
        else if cur * 2 > m || cur > m then 
            0 
        else 
            helper (cur * 2) (rem - 1) + helper (cur + 1) rem 
    in 
    helper 1 n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m. *)
