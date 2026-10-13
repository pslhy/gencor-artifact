let rec even_binomial_Coeff_Sum (n : int) : int =
  let rec binomial_Coeff (n : int) (k : int) : int =
    if k = 0 then 1
    else if n < k then 0
    else binomial_Coeff (n - 1) (k - 1) + binomial_Coeff (n - 1) (k)
  in
  let rec loop (i : int) (sum : int) : int =
    if i > n then sum
    else loop (i + 2) (sum + binomial_Coeff n i)
  in loop 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a positive integer n and finds the sum of even index binomial coefficients. *)
