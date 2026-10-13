let rec next_Perfect_Square (n : int) : int = 
    (* Check if n is a perfect square *)
    if (n mod (sqrt (float_of_int n))) = 0 then n else 
    (* Find the floor of the square root of n *)
    let sqrt_n = int_of_float (sqrt (float_of_int n)) in
    (* Increment the floor by 1 to get the next perfect square *)
    sqrt_n + 1;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the next perfect square greater than a given number. *)
