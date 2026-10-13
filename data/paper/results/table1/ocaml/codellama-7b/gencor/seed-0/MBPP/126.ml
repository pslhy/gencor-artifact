
let rec sum (a : int) (b : int) : int =
  if a = b
  then 1
  else
    let d = min a b
    in if a mod d = b mod d
    then 1 + sum (a / d) (b / d)
    else sum (a / (d + 1)) (b / (d + 1))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
