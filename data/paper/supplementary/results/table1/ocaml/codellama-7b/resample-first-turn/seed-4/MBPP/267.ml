let rec square_Sum (n : int) : int = 
    match n with 
    | 0 | _ when n mod 2 = 0 -> 0
    | _ -> (n * (n + 1) * (2 * n + 1)) / 6 + square_Sum (n - 1)

And here is the function recursion step:

 1. If n equals 0, the sum of the squares of the first n odd natural numbers is defined to be 0.
 2. If the current value of n is even (i.e., n mod 2 = 0), the sum of the squares of the first n odd natural numbers is defined to b the sum of the squares of the first (n-1) odd natural number plus the square of the (n+1)th odd natural number.
 3. If the current value of n is odd (i.e., n mod 2 = 1), the sum of the squares of the first n odd natural numbers is the sum of the squares of the first n-1 odd natural numbers plus the square of the nth odd natural number plus one.


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in an integer n and returns the sum of the squares of the first n odd natural numbers. *)
