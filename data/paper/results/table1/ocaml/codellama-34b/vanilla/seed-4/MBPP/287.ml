let rec square_Sum (n : int) : int = 
    (* base case: If n is <=0, return 0 *)
    if n <= 0 then 0
    else
        (* recurrence relation: accumulate sum of n*n and square_Sum of n-1 *)
        n * n + square_Sum (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer n and returns the sum of squares of first n even natural numbers. *)
