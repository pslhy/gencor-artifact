let rec pair_xor_Sum (arr : int list) (n : int) : int = 
    let rec xor_two (a : int) (b : int) : int = a lxor b in
    let rec sum_of_pairs (i : int) (sum : int) : int = 
        if i >= n then sum
        else
            let rec xor_with_rest (j : int) (acc : int) : int = 
                if j >= n then acc
                else xor_with_rest (j + 1) (acc lxor xor_two arr.(i) arr.(j)) 
            in
            sum_of_pairs (i + 1) (sum lxor xor_with_rest (i + 1) 0) 
    in
    sum_of_pairs 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of xor of all pairs of numbers in the given list. *)
