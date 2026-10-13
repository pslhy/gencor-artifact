(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the cube sum of first n even natural numbers. *)
let rec cube_Sum (n : int) : int =
    if n <= 0 then 0
    else if n = 1 then 1
    else if n = 2 then 2
    else
        let n = cube_Sum (n - 1) in
        n + n * n

