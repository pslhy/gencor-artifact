
let rec circular_shift (x : int) (shift : int) : string =
  let digits = string_of_int x in
  let num_digits = String.length digits in
  if shift >= num_digits then
    String.concat "" (List.rev (String.to_seq digits |> List.of_seq))
  else
    let shift_by = min shift num_digits in
    let s = String.sub digits 0 (num_digits - shift_by) in
    let e = String.sub digits (num_digits - shift_by) shift_by in
    s ^ e

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
