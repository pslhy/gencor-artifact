
let rec even_Power_Sum (n : int) : int = 
  let rec even_Squares (y : int) (sum : int) : int =
    if y > n then sum
    else even_Squares (y + 1) (sum + (int_of_float (float_of_int (2 * y) ** 5.0)))
  in even_Squares 1 0



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in an integer n and finds the sum of the first n even natural numbers that are raised to the fifth power. *)
