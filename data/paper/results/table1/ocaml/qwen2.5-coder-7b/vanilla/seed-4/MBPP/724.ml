let rec power_base_sum (base : int) (power : int) : int = 
  let rec calculate_power (n : int) (exp : int) : int = 
    if exp = 0 then 1 
    else base * calculate_power n (exp - 1) 
  in
  let rec sum_digits (n : int) : int = 
    if n = 0 then 0 
    else (n mod 10) + sum_digits (n / 10) 
  in
  sum_digits (calculate_power base power)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power. *)
