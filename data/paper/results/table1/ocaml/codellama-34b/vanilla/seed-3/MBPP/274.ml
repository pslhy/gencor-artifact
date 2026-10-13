let rec even_binomial_Coeff_Sum (n : int) : int =
  if n = 1 then
    1
  else if n mod 2 != 0 then
    let n1 = n - 1 in
    let coeff1 = int_of_float (floor (float_of_int n1 /. 2.)) in
    coeff1 + (coeff1 mod 2) * even_binomial_Coeff_Sum (n - 1)
  else
    let n1 = n - 2 in
    let coeff1 = int_of_float (floor (float_of_int n1 /. 2.)) in
    let coeff2 = int_of_float (floor (float_of_int (n - 1) /. 2.)) in
    coeff1 + coeff2 + (coeff1 mod 2) * even_binomial_Coeff_Sum (n - 2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a positive integer n and finds the sum of even index binomial coefficients. *)
