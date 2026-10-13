(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
let rec sum (a : int) (b : int) : int =
  if a = 0 || b = 0 then
    0
  else if a = b then
    a
  else
    sum (a mod b) (b mod a)

