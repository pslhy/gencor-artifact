let rec reverse_Array_Upto_K (input : int list) (k : int) : int list = 
    let rec helper remaining_list k input_list accumulator = 
        match remaining_list with 
        | [] -> List.rev accumulator
        | x :: xs when k > 0 -> helper xs (k - 1) input_list (x :: accumulator)
        | x :: xs -> List.rev (x :: accumulator) @ xs
    in 
    helper (List.rev input) k input []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
