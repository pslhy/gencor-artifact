let rec largest_divisor (n : int) : int =
  if n < 1 then failwith "input must be greater than 0"
  else if n = 1 then 1
  else
    let rec helper x =
      if x = 1 then 1
      else if n mod x = 0 then n / x
      else helper (x - 1)
    in helper n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given number n, find the largest number that divides n evenly, smaller than n *)
(*     >>> largest_divisor 15 *)
(*     5 *)
