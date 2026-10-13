
let rec even_Power_Sum (n : int) : int = 
    match n with 
    | 0 | 1 -> 0
    | n -> 
            let sum : int = even_Power_Sum (n-2) in 
            sum + n^5

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in an integer n and finds the sum of the first n even natural numbers that are raised to the fifth power. *)
