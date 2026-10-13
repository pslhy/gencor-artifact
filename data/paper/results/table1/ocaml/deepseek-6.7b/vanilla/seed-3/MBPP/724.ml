let rec power_base_sum (base : int) (power : int) : int =
  let b_pow_p = base ** power in
  let rec sum_digits (i : int) : int =
    if i <= 0 then 0
    else i mod 10 + sum_digits (i / 10)
  in sum_digits b_pow_p;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power. *)
