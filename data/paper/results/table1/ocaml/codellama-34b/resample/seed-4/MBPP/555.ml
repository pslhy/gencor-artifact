(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between the sum of cubes of the first n natural numbers and the sum of the first n natural numbers. *)
let rec difference (n : int) : int = 
    (* base case: if n is 0, there are no natural numbers to sum *)
    if n = 0 then 0
    else 
        (* sum of the n natural numbers *)
        let sum_squares = (n * (n + 1)) / 2
        (* recursion step: add the square of n to the result of the previous call *)
        in sum_squares + difference (n - 1)

