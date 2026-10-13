let rec power_base_sum (base : int) (power : int) : int = 
  let rec sum_digits (num : int) : int =
    if num = 0 then 0 else num mod 10 + sum_digits (num / 10)
  in
  sum_digits (int_of_string (string_of_int (int_of_float (Float.of_int base ** Int.to_float power))))



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power. *)
