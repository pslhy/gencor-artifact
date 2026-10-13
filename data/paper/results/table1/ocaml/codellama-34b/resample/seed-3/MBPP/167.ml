(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the smallest power of 2 greater than or equal to n. *)
let rec next_power_of_2 (n : int) : int =
  if n = 0 then
    1
  else if n mod 2 != 0 then
    next_power_of_2 (n - 1) * 2
  else
    n

