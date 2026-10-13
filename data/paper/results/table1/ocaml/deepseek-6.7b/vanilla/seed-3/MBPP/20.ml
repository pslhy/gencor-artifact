let rec is_woodall (x : int) : bool =
  x >= 1 && (x = 1 || is_woodall (sum_digits_square x))
and sum_digits_square (n : int) : int =
  if n = 0 then 0 
  else 
    let digit = n mod 10 in
    digit * digit + sum_digits_square (n / 10)

(* the sum_digits_square function computes the sum of the squares of the digits of the given number *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given number is woodball or not. *)
