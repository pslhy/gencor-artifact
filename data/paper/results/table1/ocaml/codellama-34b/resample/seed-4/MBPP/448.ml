(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to calculate the sum of perrin numbers. *)
let rec cal_sum (n : int) : int = 
    (* base case for 0 and 1 *)
    if n <= 1 then n
    (* recursive case for n * perrin number *)
    else n * cal_sum (n - 1)

