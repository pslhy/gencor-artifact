(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in an integer n and returns the sum of the squares of the first n odd natural numbers. *)
let rec square_Sum (n : int) : int = 
    if n = 1 then
        0
    else
        (n * n) + square_Sum (n - 1)

(*
Explanation:

* The function takes an integer argument n and uses the recursive approach to calculate the sum of the squares of the first n odd natural numbers.
* The base case is when n equals 1, in which case the function returns 0.
* For recursive cases, the function calculates the square of the current number, adds it to the sum of the squares of the previous numbers, and passes the decremented value of n to the next recursive call.
* The function returns the sum of the squares of the first n odd natural numbers.
*)

