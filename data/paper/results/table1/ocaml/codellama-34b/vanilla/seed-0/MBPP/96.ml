let rec divisor (n : int) : int =
    if n <= 1 then 1
    else let d = divisor (n - 1)
         if n mod d = 0 then 1 + divisor (n / d)
         else 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of divisors of a given integer. *)
