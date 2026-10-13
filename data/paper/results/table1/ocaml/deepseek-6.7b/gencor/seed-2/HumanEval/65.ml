
let rec circular_shift (x : int) (shift : int) : string =
  let rec shift_digits (x : int) (shift : int) : int * int =
    if shift = 0 then (0, x)
    else if x = 0 then (0, 0)
    else let (s, r) = shift_digits (x / 10) (shift - 1) in ((10 * r) + (s / 10), s mod 10) in
  let (_, result) = shift_digits x shift in
  string_of_int result

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Circular shift the digits of the integer x, shift the digits right by shift *)
(*     and return the result as a string. *)
(*     If shift > number of digits, return digits reversed. *)
(*     >>> circular_shift 12 1 *)
(*     "21" *)
(*     >>> circular_shift 12 2 *)
(*     "12" *)
