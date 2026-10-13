let rec sum_digits (n : int) : int =
  if n = 0 then
    0
  else
    let rem = n mod 10 in
    rem + sum_digits (n / 10)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get the sum of the digits of a non-negative integer. *)
