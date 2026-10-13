let rec dif_Square (n : int) : bool = 
    let rec find_diff (i : int) : bool = 
        match i * i with 
        | x when x > n -> false 
        | x -> (find_diff (i + 1)) || ((n - x) mod 2 = 0) 
    in 
    find_diff 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as the difference of two squares or not. *)
