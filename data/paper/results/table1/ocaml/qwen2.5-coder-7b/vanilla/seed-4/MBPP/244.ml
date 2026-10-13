let rec next_Perfect_Square (n : int) : int = 
    let sqrt_n = int_of_float (sqrt (float_of_int n)) in
    if (sqrt_n * sqrt_n = n) then next_Perfect_Square (n + 1) else (sqrt_n + 1) * (sqrt_n + 1)

(* Example usage: *)
let result = next_Perfect_Square 13  (* result will be 16 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the next perfect square greater than a given number. *)
