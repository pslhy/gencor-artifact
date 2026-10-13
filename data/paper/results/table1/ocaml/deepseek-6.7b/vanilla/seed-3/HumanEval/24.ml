let rec largest_divisor (n : int) : int =
  let rec helper (d : int) : int =
    if n mod d = 0 && n / d < n then d
    else helper (d - 1) in
  if n > 1 then helper (n - 1)
  else 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given number n, find the largest number that divides n evenly, smaller than n *)
(*     >>> largest_divisor 15 *)
(*     5 *)
