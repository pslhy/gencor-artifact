(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last digit in factorial of a given number. *)
let rec last_Digit_Factorial (n : int) : int = 
    (* base case: if n is 0 or 1, return 1 *)
    if n <= 1 then 1
    (* recursive case: factorial of n can be computed as (n * factorial(n-1) *)
    else n * last_Digit_Factorial(n-1) 

