let rec power_base_sum (base : int) (power : int) : int =
  let rec digits power acc =
    if power = 0 then acc
    else digits (power / 10) (power mod 10 + acc) in
  let rec sum_powers base power n acc =
    if n = 0 then acc
    else sum_powers base power (n - 1) (digits (power * (base mod 10)) 0 + acc) in
  sum_powers base power (digits power 0) 0;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power. *)
