(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
let rec armstrong_number (number : int) : bool = 
  let rec sum_of_powers (n : int) (power : int) : int =
    if n = 0 then 0 else (int_of_float (pow (float (n mod 10)) (float power))) + sum_of_powers (n / 10) power
  in
  let digits = int_of_float (log10 (float number)) + 1 in
  sum_of_powers number digits = number

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:41: Unbound value "pow" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec armstrong_number (number : int) : bool = 
  let rec sum_of_powers (n : int) (power : int) : int =
    if n = 0 then 0 else (int_of_float (Float.of_int (n mod 10) ** Float.of_int power)) + sum_of_powers (n / 10) power
  in
  let digits = int_of_float (log10 (float number)) + 1 in
  sum_of_powers number digits = number

