let rec pair_xor_Sum (arr : int list) (n : int) : int = 
    let rec helper (index : int) (sum : int) : int = 
        if index >= n then sum
        else 
            let rec inner_helper (i : int) (xor_sum : int) : int = 
                if i >= n then xor_sum
                else inner_helper (i + 1) (xor_sum lor (arr.[index] lxor arr.[i]))
            in helper (index + 1) (sum + inner_helper (index + 1) 0)
    in helper 0 0

let total_xor pairs = pair_xor_Sum pairs (List.length pairs)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of xor of all pairs of numbers in the given list. *)
