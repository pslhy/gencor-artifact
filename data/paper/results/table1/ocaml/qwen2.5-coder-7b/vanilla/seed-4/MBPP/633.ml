let rec pair_xor_Sum (arr : int list) (n : int) : int = 
    let xor a b = a lxor b in
    let rec pairs sum i j =
        if i >= n then sum
        else if j >= n then pairs sum (i + 1) (i + 1)
        else pairs (sum + xor (List.nth arr i) (List.nth arr j)) i (j + 1)
    in pairs 0 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of xor of all pairs of numbers in the given list. *)
