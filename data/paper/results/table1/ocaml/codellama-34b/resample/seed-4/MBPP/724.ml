(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power. *)
let rec power_base_sum (base : int) (power : int) : int =
  if power <= 0 then
    0
  else
    let result = base ** power in
    let rec sum_digits (n : int) : int =
      if n <= 0 then
        0
      else
        sum_digits (n / 10) + n mod 10
    in
    sum_digits result

