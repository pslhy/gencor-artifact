let rec cube_Sum (n : int) : int = 
    if n = 1 then
        0
    else if n mod 2 = 0 then
        cube_Sum (n - 1)
    else
        n + 3


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the cube sum of first n even natural numbers. *)
