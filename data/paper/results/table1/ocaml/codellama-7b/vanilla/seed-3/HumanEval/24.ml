let rec largest_divisor (n : int) : int =
  if n = 1 then n else
  let d = largest_divisor (n / 2) in
  if n mod d = 0 then d else d - 1
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given number n, find the largest number that divides n evenly, smaller than n *)
(*     >>> largest_divisor 15 *)
(*     5 *)
