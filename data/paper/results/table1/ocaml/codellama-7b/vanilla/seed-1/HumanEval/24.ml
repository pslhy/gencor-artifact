let rec largest_divisor (n : int) : int =
  if n = 1 then 1
  else if n mod 2 = 0 then 2
  else largest_divisor (n / 2)

let () =
  print_endline (string_of_int (largest_divisor 15))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given number n, find the largest number that divides n evenly, smaller than n *)
(*     >>> largest_divisor 15 *)
(*     5 *)
