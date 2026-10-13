(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the average of cubes of first n natural numbers. *)
let rec find_Average_Of_Cube (n : int) : float = 
    (* base case: If n is equal to zero, then return zero *)
    if n = 0 then 0.0
    (* rec case: If n is greater than zero, then return the average of the cube of first n natural numbers *)
    else (find_Sum_Of_Cube n) /. (float_of_int n)
    
    
and find_Sum_Of_Cube (n : int) : int =
    (* base case: If n is equal to zero, then return zero *)
    if n = 0 then 0
    (* rec case: If n is greater than zero, then return the sum of the cube of first n natural numbers *)
    else (n * n * n) + (find_Sum_Of_Cube (n - 1))

